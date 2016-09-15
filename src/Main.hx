import hex.ioc.parser.xml.XmlReader; 
import js.Browser;

class Main
{
    public function new()
    {
        Browser.console.debug("test");
        // XmlCompiler.readXmlFile("configuration/context.xml");
        XmlReader.readXmlFile("configuration/context.xml");
    }

    static function main() : Void
    {
        new Main();
    }
}