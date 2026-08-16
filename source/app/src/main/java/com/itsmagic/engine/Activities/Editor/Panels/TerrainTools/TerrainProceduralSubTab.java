package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Procedural Generators & Mathematical Noise.
 * Features Perlin, Simplex, Voronoi/Worley, Ridged Multifractal, Tectonic Faults, and Terraces.
 */
public class TerrainProceduralSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;

    public TerrainProceduralSubTab(Context context) {
        this.context = context;
        this.terrainManager = TerrainManagerPro.getInstance();
        this.scrollContainer = new ScrollView(context);
        buildUI();
    }

    private void buildUI() {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(20, 16, 20, 24);

        // Section Title
        TextView header = new TextView(context);
        header.setText("PROCEDURAL GENERATORS");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        layout.addView(createGenButton("⛰ Perlin Fractal Mountains (Octaves: 6, Persist: 0.5)"));
        layout.addView(createGenButton("▲ Ridged Multifractal (Alpine Peaks & Ridges)"));
        layout.addView(createGenButton("⬡ Worley / Voronoi Cells (Basalt & Plateaus)"));
        layout.addView(createGenButton("☵ Terrace Quantizer (Canyon Steps)"));
        layout.addView(createGenButton("⚡ Tectonic Fault Lines (Geological Shifts)"));
        layout.addView(createGenButton("≈ Desert Sand Dunes (Wind Vector Flow)"));

        // Global Generate Button
        Button btnGenAll = new Button(context);
        btnGenAll.setText("🚀 Generate Procedural Terrain");
        btnGenAll.setTextColor(Color.WHITE);
        btnGenAll.setBackgroundColor(Color.parseColor("#0288D1"));
        btnGenAll.setPadding(0, 16, 0, 16);
        layout.addView(btnGenAll);

        scrollContainer.addView(layout);
    }

    private Button createGenButton(String title) {
        Button btn = new Button(context);
        btn.setText(title);
        btn.setTextSize(11);
        btn.setTextColor(Color.WHITE);
        btn.setPadding(16, 12, 16, 12);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(160, 40, 48, 60));
        bg.setCornerRadius(8);
        btn.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );
        lp.setMargins(0, 4, 0, 6);
        btn.setLayoutParams(lp);

        return btn;
    }

    public View getView() {
        return scrollContainer;
    }
}
