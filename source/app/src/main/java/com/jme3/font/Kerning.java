package com.jme3.font;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;

public class Kerning implements Savable {
    private int amount;
    private int second;

    public int getAmount() {
        return this.amount;
    }

    public int getSecond() {
        return this.second;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.second = capsule.readInt("second", 0);
        this.amount = capsule.readInt("amount", 0);
    }

    public void setAmount(int i10) {
        this.amount = i10;
    }

    public void setSecond(int i10) {
        this.second = i10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.second, "second", 0);
        capsule.write(this.amount, "amount", 0);
    }
}
