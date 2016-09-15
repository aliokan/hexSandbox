import hex.compiler.parser.xml.XmlCompiler; 
import hex.ioc.assembler.ApplicationAssembler;
import hex.metadata.AnnotationProvider;

class Main
{
    public function new()
    {
        this._initLogger();

        var applicationAssembler = new ApplicationAssembler();
        var applicationContext = applicationAssembler.getApplicationContext("applicationContext");
        var injector = applicationContext.getInjector();
        
        var annotationProvider = AnnotationProvider.getAnnotationProvider( applicationContext.getDomain() );
        annotationProvider.registerMetaData( "Value", this.getValue );
        
        XmlCompiler.readXmlFileWithAssembler(applicationAssembler, "configuration/context.xml");
    }

    public function getValue( value : String ) : Dynamic
    {
        return value;
    }

    function _initLogger() : Void
    {
        var proxy = new hex.log.layout.LogProxyLayout();
        proxy.addListener( new hex.log.layout.JavaScriptConsoleLayout() );
    }

    static function main() : Void
    {
        new Main();
    }
}