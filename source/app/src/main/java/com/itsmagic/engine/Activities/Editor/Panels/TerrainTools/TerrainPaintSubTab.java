package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.AutoBiomeRuleEngine;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Paint Texture Layers & Auto-Biome Generator.
 * Manages up to 16 PBR Texture Layers, Triplanar Cliff Projection, and Auto-Biome Rules.
 */
public class TerrainPaintSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;
    private final AutoBiomeRuleEngine biomeEngine;

    public TerrainPaintSubTab(Context context) {
        this.context = context;
        this.terrainManager = TerrainManagerPro.getInstance();
        this.biomeEngine = terrainManager.getBiomeEngine();
        this.scrollContainer = new ScrollView(context);
        buildUI();
    }

    private void buildUI() {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(20, 16, 20, 24);

        // Section Title
        TextView header = new TextView(context);
        header.setText("PBR TEXTURE LAYERS & BIOMES");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        // Active Layer List
        for (AutoBiomeRuleEngine.BiomeLayerRule rule : biomeEngine.getRules()) {
            layout.addView(createLayerCard(rule));
        }

        // Add Layer Button
        Button btnAddLayer = new Button(context);
        btnAddLayer.setText("+ Add Texture Layer (Albedo/Normal/Rough/Height)");
        btnAddLayer.setTextSize(11);
        btnAddLayer.setTextColor(Color.WHITE);
        btnAddLayer.setBackgroundColor(Color.parseColor("#37474F"));
        layout.addView(btnAddLayer);

        // Triplanar Mapping Global Switch
        CheckBox chkTriplanar = new CheckBox(context);
        chkTriplanar.setText("Enable Triplanar Projection on Steep Cliffs (> 60°)");
        chkTriplanar.setTextColor(Color.WHITE);
        chkTriplanar.setChecked(true);
        chkTriplanar.setPadding(0, 16, 0, 12);
        layout.addView(chkTriplanar);

        // Auto-Biome Bake Button
        Button btnBakeBiomes = new Button(context);
        btnBakeBiomes.setText("⚡ Auto-Bake Biome Splatmaps (Slope & Height Rules)");
        btnBakeBiomes.setTextColor(Color.WHITE);
        btnBakeBiomes.setBackgroundColor(Color.parseColor("#00897B"));
        btnBakeBiomes.setPadding(0, 16, 0, 16);
        layout.addView(btnBakeBiomes);

        scrollContainer.addView(layout);
    }

    private LinearLayout createLayerCard(AutoBiomeRuleEngine.BiomeLayerRule rule) {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(16, 12, 16, 12);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(160, 35, 42, 55));
        bg.setCornerRadius(8);
        card.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );
        lp.setMargins(0, 4, 0, 8);
        card.setLayoutParams(lp);

        TextView txtName = new TextView(context);
        txtName.setText("[" + rule.layerIndex + "] " + rule.layerName + " (Slope: " + (int) rule.minSlopeDeg + "° - " + (int) rule.maxSlopeDeg + "°)");
        txtName.setTextColor(Color.WHITE);
        txtName.setTextSize(12);
        txtName.setTypeface(null, android.graphics.Typeface.BOLD);
        card.addView(txtName);

        return card;
    }

    public View getView() {
        return scrollContainer;
    }
}
