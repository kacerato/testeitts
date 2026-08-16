package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainFalloffCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Sculpt & Shape Palette (Unity-style Sculpting).
 * Provides buttons and settings for Raise/Lower, Paint Height, Smooth, Flatten, Ramp, Stamp, Pinch.
 */
public class TerrainSculptSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;

    public TerrainSculptSubTab(Context context) {
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
        header.setText("SCULPT & SHAPE TOOLS");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 16);
        layout.addView(header);

        // Grid of Sculpt Tools
        layout.addView(createToolButton("▲ Raise / Lower (Smooth Add/Sub)", TerrainManagerPro.SculptTool.RAISE_LOWER));
        layout.addView(createToolButton("■ Paint Height (Target Altitude)", TerrainManagerPro.SculptTool.PAINT_HEIGHT));
        layout.addView(createToolButton("≈ Smooth (Laplacian / Gaussian)", TerrainManagerPro.SculptTool.SMOOTH));
        layout.addView(createToolButton("— Flatten (Plateau Level)", TerrainManagerPro.SculptTool.FLATTEN));
        layout.addView(createToolButton("☡ Ramp / Road Path Tool", TerrainManagerPro.SculptTool.RAMP));
        layout.addView(createToolButton("✦ Stamp Heightmap (Alpha Brush)", TerrainManagerPro.SculptTool.STAMP));
        layout.addView(createToolButton("❖ Pinch / Inflate (Cliffs)", TerrainManagerPro.SculptTool.PINCH));

        // Falloff Curve Selector Header
        TextView curveHeader = new TextView(context);
        curveHeader.setText("BRUSH FALLOFF CURVE");
        curveHeader.setTextColor(Color.WHITE);
        curveHeader.setTextSize(12);
        curveHeader.setTypeface(null, android.graphics.Typeface.BOLD);
        curveHeader.setPadding(0, 20, 0, 10);
        layout.addView(curveHeader);

        // Falloff Buttons
        LinearLayout curveRow = new LinearLayout(context);
        curveRow.setOrientation(LinearLayout.HORIZONTAL);

        curveRow.addView(createCurveButton("SmoothStep", TerrainFalloffCurve.Type.SMOOTH_STEP));
        curveRow.addView(createCurveButton("Linear", TerrainFalloffCurve.Type.LINEAR));
        curveRow.addView(createCurveButton("Gaussian", TerrainFalloffCurve.Type.GAUSSIAN));
        curveRow.addView(createCurveButton("Spike", TerrainFalloffCurve.Type.SPIKE));

        layout.addView(curveRow);

        scrollContainer.addView(layout);
    }

    private Button createToolButton(String label, TerrainManagerPro.SculptTool tool) {
        Button btn = new Button(context);
        btn.setText(label);
        btn.setTextSize(12);
        btn.setTextColor(Color.WHITE);
        btn.setPadding(20, 14, 20, 14);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(terrainManager.getActiveTool() == tool ? Color.parseColor("#00838F") : Color.argb(160, 40, 48, 60));
        bg.setCornerRadius(10);
        bg.setStroke(1, Color.argb(80, 255, 255, 255));
        btn.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );
        lp.setMargins(0, 6, 0, 6);
        btn.setLayoutParams(lp);

        btn.setOnClickListener(v -> {
            terrainManager.setActiveTool(tool);
            btn.setBackgroundColor(Color.parseColor("#00838F"));
        });

        return btn;
    }

    private Button createCurveButton(String label, TerrainFalloffCurve.Type type) {
        Button btn = new Button(context);
        btn.setText(label);
        btn.setTextSize(10);
        btn.setTextColor(Color.WHITE);
        btn.setPadding(10, 8, 10, 8);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(180, 50, 60, 75));
        bg.setCornerRadius(8);
        btn.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                0,
                LinearLayout.LayoutParams.WRAP_CONTENT,
                1.0f
        );
        lp.setMargins(4, 0, 4, 0);
        btn.setLayoutParams(lp);

        btn.setOnClickListener(v -> {
            terrainManager.getFalloffCurve().setType(type);
        });

        return btn;
    }

    public View getView() {
        return scrollContainer;
    }
}
