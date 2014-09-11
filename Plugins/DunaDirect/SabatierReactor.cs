using System;
using UnityEngine;

public class SabatierReactor : ModuleGenerator {

    // Plugin Loaded
    public override void OnStart(StartState state) {
        print("Starting SabatierReactor");
        base.OnStart(state);
    }

    public override void OnFixedUpdate() {
        if (generatorIsActive) {
            foreach (GeneratorResource resource in inputList) {
                print("checking resource '" + resource.name + "': " + resource.isDeprived);
                if (resource.isDeprived) {
                    print("a resource is deprived: " + resource.name);
                    Shutdown();
                    break;
                }
            }
        }
        base.OnFixedUpdate();
    }

}
