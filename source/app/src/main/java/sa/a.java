package Sa;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;

public class a extends NoCodeNode {

    public String f23029g = "";

    @Override
    public NoCodeSlot[] F() {
        return new NoCodeSlot[0];
    }

    public String G0() {
        return this.f23029g;
    }

    public void H0(String selectedPreset) {
        if (selectedPreset == null) {
            selectedPreset = "";
        }
        this.f23029g = selectedPreset;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Preset";
    }

    @Override
    public boolean c0() {
        return true;
    }
}
