package mock;

import hex.core.IAnnotationParsable;

class ClassWithAnnotation implements IAnnotationParsable
{

    @Value("Class")
    var message : String; 

    public function new()
    {
        #if debug
        hex.log.Logger.DEBUG( this.message );
        #end
    }
}