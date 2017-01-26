package mock;

import hex.event.MacroAdapterStrategy; 
import hex.control.Request;

class MockAdapterStrategyMacro extends MacroAdapterStrategy
{
    override function _prepare() : Void
    {

    }

    public function new() : Void
    {
        super(this, onAdapt);
    }

    public function onAdapt( ?request:Request ) : Void
    {

    }
}