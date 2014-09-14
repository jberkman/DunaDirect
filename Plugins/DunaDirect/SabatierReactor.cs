using System;
using UnityEngine;

public class SabatierReactor : PartModule {
	private ModuleResourceIntake intake;
	private ModuleGenerator generator;

	public override void OnStart(StartState state) {
//		UnityEngine.Debug.Log("SabatierReactor.OnStart()");
		if (intake == null) {
			intake = part.FindModuleImplementing<ModuleResourceIntake>();
//			UnityEngine.Debug.Log(String.Format("OnStart {0}: {1}", state, intake));
			intake.Events["Activate"].guiActive = false;
			intake.Events["Deactivate"].guiActive = false;
		}
//		if (generator == null) {
//			generator = part.FindModuleImplementing<ModuleGenerator>();
//			UnityEngine.Debug.Log(String.Format("OnStart {0}: {1}", state, generator));
//			//generator.Events["Activate"].active = !generator.generatorIsActive;
//			//generator.Events["Shutdown"].active = generator.generatorIsActive;
//		}
//		UnityEngine.Debug.Log("SabatierReactor.OnStart() exit");
	}

	public override void OnAwake() {
		UnityEngine.Debug.Log("SabatierReactor.OnAwake()");
		//UnityEngine.Debug.Log(intake.Events);
	}
	
	void FixedUpdate() {
		bool hasCarbonDioxide = false;
		switch (vessel.mainBody.name) {
		case "Duna":
		case "Kerbin":
		case "Eve":
			hasCarbonDioxide = true;
			break;
		}
		if (hasCarbonDioxide != intake.intakeEnabled) {
			UnityEngine.Debug.Log("Toggling intake: " + intake);
			intake.intakeEnabled = hasCarbonDioxide;
			intake.status = hasCarbonDioxide ? "Nominal" : "No Carbon Dioxide";
		}
	}

}
