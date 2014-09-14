//
//	Copyright (c) 2014, jacob berkman
//	
//	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
//	documentation files (the "Software"), to deal in the Software without restriction, including without limitation
//	the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
//	permit persons to whom the Software is furnished to do so, subject to the following conditions:
//	
//	The above copyright notice and this permission notice shall be included in all copies or substantial portions of
//	the Software.
//	
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
//	THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
//	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//	SOFTWARE.
//

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
