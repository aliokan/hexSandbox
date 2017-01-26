package mock;

import hex.service.stateful.StatefulService;

class MockService extends StatefulService implements IMockService
{
    public function new() 
	{
		super();
        trace("MockService");
        var yourTimer:haxe.Timer = new haxe.Timer(1000);
        yourTimer.run = _notify;
	}

    public function _notify( ) : Void
	{
		this.getDispatcher().dispatch( mock.MockMessage.EVENT, [ Date.now() ] );
	}
}