package com.itsmagic.engine.Activities.Editor.Panels.TerrainStudio;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * On-Screen Floating HUD Overlay for Terrain Studio Viewport.
 * Provides quick sliders for Brush Size & Strength, Target Height, and Visualization Toggles.
 */
public class TerrainViewportHUD {

    private final Context context;
    private final FrameLayout container;
    private final TerrainManagerPro terrainManager;

    private TextView txtSize;
    private TextView txtStrength;

    public TerrainViewportHUD(Context context, FrameLayout parentContainer) {
        this.context = context;
        this.container = parentContainer;
        this.terrainManager = TerrainManagerPro.getInstance();
        buildHUD();
    }

    private void buildHUD() {
        // Floating Top-Left Card
        LinearLayout hudCard = new LinearLayout(context);
        hudCard.setOrientation(LinearLayout.VERTICAL);
        hudCard.setPadding(24, 20, 24, 20);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(190, 25, 28, 35));
        bg.setCornerRadius(16);
        bg.setStroke(2, Color.argb(100, 70, 80, 100));
        hudCard.setBackground(bg);

        FrameLayout.LayoutParams cardParams = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT,
                FrameLayout.LayoutParams.WRAP_CONTENT
        );
        cardParams.gravity = Gravity.TOP | Gravity.START;
        cardParams.setMargins(32, 32, 0, 0);
        hudCard.setLayoutParams(cardParams);

        // Title
        TextView title = new TextView(context);
        title.setText("TERRAIN STUDIO 3D");
        title.setTextColor(Color.parseColor("#00E5FF"));
        title.setTextSize(12);
        title.setTypeface(null, android.graphics.Typeface.BOLD);
        hudCard.addView(title);

        // Brush Size Row
        txtSize = new TextView(context);
        txtSize.setText("Size: " + (int) terrainManager.getBrushRadius() + "m");
        txtSize.setTextColor(Color.WHITE);
        txtSize.setTextSize(11);
        txtSize.setPadding(0, 12, 0, 4);
        hudCard.addView(txtSize);

        SeekBar barSize = new SeekBar(context);
        barSize.setMax(200);
        barSize.setProgress((int) terrainManager.getBrushRadius());
        barSize.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                int val = Math.max(1, progress);
                terrainManager.setBrushRadius(val);
                txtSize.setText("Size: " + val + "m");
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });
        hudCard.addView(barSize);

        // Brush Strength Row
        txtStrength = new TextView(context);
        txtStrength.setText("Strength: " + String.format("%.2f", terrainManager.getBrushStrength()));
        txtStrength.setTextColor(Color.WHITE);
        txtStrength.setTextSize(11);
        txtStrength.setPadding(0, 8, 0, 4);
        hudCard.addView(txtStrength);

        SeekBar barStrength = new SeekBar(context);
        barStrength.setMax(100);
        barStrength.setProgress((int) (terrainManager.getBrushStrength() * 100));
        barStrength.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                float val = Math.max(0.01f, progress / 100.0f);
                terrainManager.setBrushStrength(val);
                txtStrength.setText("Strength: " + String.format("%.2f", val));
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });
        hudCard.addView(barStrength);

        // Visualization Toggles (Wireframe, Slope Heatmap)
        LinearLayout toggleRow = new LinearLayout(context);
        toggleRow.setOrientation(LinearLayout.HORIZONTAL);
        toggleRow.setPadding(0, 12, 0, 0);

        Button btnWireframe = createSmallButton("Wire", v -> {
            boolean isWire = terrainManager.getOverlayMode() == TerrainManagerPro.ViewportOverlayMode.WIREFRAME;
            terrainManager.setOverlayMode(isWire ? TerrainManagerPro.ViewportOverlayMode.NORMAL : TerrainManagerPro.ViewportOverlayMode.WIREFRAME);
        });

        Button btnHeatmap = createSmallButton("Slope", v -> {
            boolean isSlope = terrainManager.getOverlayMode() == TerrainManagerPro.ViewportOverlayMode.SLOPE_HEATMAP;
            terrainManager.setOverlayMode(isSlope ? TerrainManagerPro.ViewportOverlayMode.NORMAL : TerrainManagerPro.ViewportOverlayMode.SLOPE_HEATMAP);
        });

        Button btnInvert = createSmallButton("Inv (Sub)", v -> {
            terrainManager.setInvertAction(!terrainManager.isInvertAction());
            ((Button) v).setText(terrainManager.isInvertAction() ? "Inv [ON]" : "Inv [OFF]");
        });

        toggleRow.addView(btnWireframe);
        toggleRow.addView(btnHeatmap);
        toggleRow.addView(btnInvert);
        hudCard.addView(toggleRow);

        container.addView(hudCard);
    }

    private Button createSmallButton(String text, View.OnClickListener listener) {
        Button btn = new Button(context);
        btn.setText(text);
        btn.setTextSize(10);
        btn.setTextColor(Color.WHITE);
        btn.setPadding(12, 6, 12, 6);
        btn.setOnClickListener(listener);

        GradientDrawable btnBg = new GradientDrawable();
        btnBg.setColor(Color.argb(200, 45, 52, 65));
        btnBg.setCornerRadius(8);
        btn.setBackground(btnBg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );
        lp.setMargins(4, 0, 4, 0);
        btn.setLayoutParams(lp);

        return btn;
    }

    public View getView() {
        return container;
    }
}
