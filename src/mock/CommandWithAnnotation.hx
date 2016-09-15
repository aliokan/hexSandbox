package mock;

import hex.core.IAnnotationParsable;
import hex.control.async.AsyncCommand;
import hex.control.Request;

class CommandWithAnnotation extends AsyncCommand implements IAnnotationParsable
{

    @Value("Command")
    var message : String; 

    public function new()
    {
        super();
        #if debug
        hex.log.Logger.DEBUG( this.message );
        #end
    }

    public function execute( ?request : Request ) : Void
    {
        #if debug
        hex.log.Logger.DEBUG( this.message );
        #end
    }
}