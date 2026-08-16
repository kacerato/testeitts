package com.jme3.app;

import com.jme3.asset.AssetManager;
import com.jme3.font.BitmapText;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Statistics;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;

public class StatsView extends Node implements Control, JmeCloneable {
    private boolean enabled;
    private final int[] statData;
    private final String[] statLabels;
    private final BitmapText statText;
    private final Statistics statistics;
    private final StringBuilder stringBuilder;

    public StatsView(String str, AssetManager assetManager, Statistics statistics) {
        super(str);
        this.enabled = true;
        this.stringBuilder = new StringBuilder();
        setQueueBucket(RenderQueue.Bucket.Gui);
        setCullHint(Spatial.CullHint.Never);
        this.statistics = statistics;
        statistics.setEnabled(this.enabled);
        String[] labels = statistics.getLabels();
        this.statLabels = labels;
        this.statData = new int[labels.length];
        BitmapText bitmapText = new BitmapText(assetManager.loadFont("Interface/Fonts/Console.fnt"));
        this.statText = bitmapText;
        bitmapText.setLocalTranslation(0.0f, bitmapText.getLineHeight() * labels.length, 0.0f);
        attachChild(bitmapText);
        addControl(this);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        throw new UnsupportedOperationException("Not yet implemented.");
    }

    @Override
    @Deprecated
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public float getHeight() {
        return this.statText.getLineHeight() * this.statLabels.length;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
        this.statistics.setEnabled(z10);
    }

    @Override
    public void setSpatial(Spatial spatial) {
    }

    @Override
    public void update(float f10) {
        if (isEnabled()) {
            this.statistics.getData(this.statData);
            this.stringBuilder.setLength(0);
            for (int length = this.statLabels.length - 1; length >= 0; length--) {
                StringBuilder sb2 = this.stringBuilder;
                sb2.append(this.statLabels[length]);
                sb2.append(" = ");
                sb2.append(this.statData[length]);
                sb2.append('\n');
            }
            this.statText.setText(this.stringBuilder);
        }
    }

    @Override
    public StatsView jmeClone() {
        throw new UnsupportedOperationException("Not yet implemented.");
    }
}
