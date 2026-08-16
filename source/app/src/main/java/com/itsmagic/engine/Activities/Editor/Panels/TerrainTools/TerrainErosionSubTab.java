package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.HydraulicErosionSimulator;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Physical Erosion Simulator.
 * Hydraulic raindrop simulation, sediment transport, and thermal talus rock crumbling.
 */
public class TerrainErosionSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final HydraulicErosionSimulator erosionSimulator;

    public TerrainErosionSubTab(Context context) {
        this.context = context;
        this.erosionSimulator = TerrainManagerPro.getInstance().getErosionSimulator();
        this.scrollContainer = new ScrollView(context);
        buildUI();
    }

    private void buildUI() {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(20, 16, 20, 24);

        // Section Title
        TextView header = new TextView(context);
        header.setText("PHYSICAL EROSION SIMULATOR");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        // Droplet Count / Rain Iterations
        TextView txtDroplets = new TextView(context);
        txtDroplets.setText("Rain Droplets (Batch): 25,000");
        txtDroplets.setTextColor(Color.WHITE);
        txtDroplets.setTextSize(11);
        layout.addView(txtDroplets);

        SeekBar barDroplets = new SeekBar(context);
        barDroplets.setMax(100);
        barDroplets.setProgress(25);
        barDroplets.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                int count = Math.max(1000, progress * 1000);
                txtDroplets.setText("Rain Droplets (Batch): " + count);
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });
        layout.addView(barDroplets);

        // Run Hydraulic Simulation Button
        Button btnHydraulic = new Button(context);
        btnHydraulic.setText("💧 Run Hydraulic Erosion (Rain & Rivers)");
        btnHydraulic.setTextColor(Color.WHITE);
        btnHydraulic.setBackgroundColor(Color.parseColor("#1565C0"));
        btnHydraulic.setPadding(0, 16, 0, 16);
        layout.addView(btnHydraulic);

        // Thermal Avalanche Button
        Button btnThermal = new Button(context);
        btnThermal.setText("⛰ Run Thermal Erosion (Talus Angle Avalanches)");
        btnThermal.setTextColor(Color.WHITE);
        btnThermal.setBackgroundColor(Color.parseColor("#E65100"));
        btnThermal.setPadding(0, 16, 0, 16);
        layout.addView(btnThermal);

        scrollContainer.addView(layout);
    }

    public View getView() {
        return scrollContainer;
    }
}
