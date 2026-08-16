package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.FoliageScatterSystem;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Foliage & Tree Scatter Palette.
 * Configures 3D tree models, grass quads, density, wind physics, and GPU instancing.
 */
public class TerrainFoliageSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;
    private final FoliageScatterSystem foliageSystem;

    public TerrainFoliageSubTab(Context context) {
        this.context = context;
        this.terrainManager = TerrainManagerPro.getInstance();
        this.foliageSystem = terrainManager.getFoliageSystem();
        this.scrollContainer = new ScrollView(context);
        buildUI();
    }

    private void buildUI() {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(20, 16, 20, 24);

        // Section Title
        TextView header = new TextView(context);
        header.setText("FOLIAGE & VEGETATION SCATTER");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        // Foliage List
        for (FoliageScatterSystem.FoliagePrototype proto : foliageSystem.getPrototypes()) {
            layout.addView(createFoliageCard(proto));
        }

        // Add Foliage Button
        Button btnAdd = new Button(context);
        btnAdd.setText("+ Add 3D Tree / Grass Prototype");
        btnAdd.setTextColor(Color.WHITE);
        btnAdd.setBackgroundColor(Color.parseColor("#37474F"));
        layout.addView(btnAdd);

        // Wind Controls Header
        TextView windHeader = new TextView(context);
        windHeader.setText("WIND ANIMATION (VERTEX SHADER)");
        windHeader.setTextColor(Color.WHITE);
        windHeader.setTextSize(12);
        windHeader.setTypeface(null, android.graphics.Typeface.BOLD);
        windHeader.setPadding(0, 20, 0, 8);
        layout.addView(windHeader);

        TextView txtWind = new TextView(context);
        txtWind.setText("Wind Strength: 0.30");
        txtWind.setTextColor(Color.WHITE);
        txtWind.setTextSize(11);
        layout.addView(txtWind);

        SeekBar barWind = new SeekBar(context);
        barWind.setMax(100);
        barWind.setProgress(30);
        barWind.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                float val = progress / 100.0f;
                foliageSystem.setWindStrength(val);
                txtWind.setText(String.format("Wind Strength: %.2f", val));
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });
        layout.addView(barWind);

        scrollContainer.addView(layout);
    }

    private LinearLayout createFoliageCard(FoliageScatterSystem.FoliagePrototype proto) {
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

        TextView txtTitle = new TextView(context);
        txtTitle.setText((proto.isGrass ? "🌿 " : "🌲 ") + proto.name + " (" + (int) proto.densityPer100m + "/100m²)");
        txtTitle.setTextColor(Color.WHITE);
        txtTitle.setTextSize(12);
        txtTitle.setTypeface(null, android.graphics.Typeface.BOLD);
        card.addView(txtTitle);

        return card;
    }

    public View getView() {
        return scrollContainer;
    }
}
