import hex.compiler.parser.xml.XmlCompiler; 
import hex.runtime.ApplicationAssembler;
import js.Browser;

class Main
{
    public function new()
    {
        Browser.console.debug("test");
        /*
        var applicationAssembler = new ApplicationAssembler();
        var applicationContext = applicationAssembler.getApplicationContext( "applicationContext", hex.ioc.assembler.ApplicationContext );
        var injector = applicationContext.getInjector(); 

        injector.mapToValue(String, "Hello");
        */
        XmlCompiler.readXmlFile( "configuration/context.xml" );
        // XmlReader.readXmlFile("configuration/context.xml");
    }

    static function main() : Void
    {
        new Main();
    }
}