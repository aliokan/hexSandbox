package mock;

import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

class MockModule extends Module
{	
	public function new ( ?config: hex.ioc.di.MappingConfiguration )
	{
		super();

		if(config != null ) this._addStatefulConfigs( [config] );
	}

	public function onUpdate( now : Date ) : Void
	{
		trace(now);
	}

	override function _getRuntimeDependencies() : IRuntimeDependencies
	{
		return new RuntimeDependencies();
	}
}