package mock;

import hex.core.IAnnotationParsable;
import hex.control.macro.Macro;

class MacroWithAnnotation extends Macro implements IAnnotationParsable
{

    @Value("Macro")
    var message : String; 

    override function _prepare() : Void
    {
        #if debug
        hex.log.Logger.DEBUG( this.message );
        #end

        this.add( CommandWithAnnotation );
    }
}