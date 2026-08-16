package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;

/**
 * Terrain Tools Side Panel (Inspector / Properties Palette).
 * Positioned alongside ObjectsPanel, housing all 7 specialized terrain sub-tabs.
 */
public class TerrainToolsPanel extends EditorPanel {

    public static final String PANEL_ID = "TerrainToolsPanel";
    public static final Class<?> PANEL_CLASS = TerrainToolsPanel.class;

    private LinearLayout rootLayout;
    private FrameLayout contentFrame;

    private TerrainSculptSubTab sculptSubTab;
    private TerrainPaintSubTab paintSubTab;
    private TerrainFoliageSubTab foliageSubTab;
    private TerrainProceduralSubTab proceduralSubTab;
    private TerrainErosionSubTab erosionSubTab;
    private TerrainHolesSubTab holesSubTab;
    private TerrainSettingsSubTab settingsSubTab;

    public static class Factory extends EditorPanel.j {
        @Override
        public Class<?> b() {
            return PANEL_CLASS;
        }

        @Override
        public String c() {
            return PANEL_ID;
        }
    }

    static {
        EditorPanel.a(new Factory());
    }

    public TerrainToolsPanel() {
        super(null, "Terrain Tools", PANEL_ID);
    }

    public TerrainToolsPanel(Context context) {
        super(null, "Terrain Tools", PANEL_ID);
    }

    @Override
    public View C0() {
        Context ctx = M();
        if (rootLayout == null && ctx != null) {
            rootLayout = new LinearLayout(ctx);
            rootLayout.setOrientation(LinearLayout.VERTICAL);
            rootLayout.setBackgroundColor(Color.parseColor("#171A21"));

            // Sub-Tabs
            sculptSubTab = new TerrainSculptSubTab(ctx);
            paintSubTab = new TerrainPaintSubTab(ctx);
            foliageSubTab = new TerrainFoliageSubTab(ctx);
            proceduralSubTab = new TerrainProceduralSubTab(ctx);
            erosionSubTab = new TerrainErosionSubTab(ctx);
            holesSubTab = new TerrainHolesSubTab(ctx);
            settingsSubTab = new TerrainSettingsSubTab(ctx);

            // Horizontal Tab Switcher Bar
            HorizontalScrollView tabScroll = new HorizontalScrollView(ctx);
            tabScroll.setHorizontalScrollBarEnabled(false);
            tabScroll.setBackgroundColor(Color.parseColor("#0F1116"));

            LinearLayout tabRow = new LinearLayout(ctx);
            tabRow.setOrientation(LinearLayout.HORIZONTAL);
            tabRow.setPadding(8, 8, 8, 8);

            tabRow.addView(createTabButton(ctx, "Sculpt", sculptSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Paint (PBR)", paintSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Foliage", foliageSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Procedural", proceduralSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Erosion", erosionSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Holes", holesSubTab.getView()));
            tabRow.addView(createTabButton(ctx, "Settings", settingsSubTab.getView()));

            tabScroll.addView(tabRow);
            rootLayout.addView(tabScroll);

            // Content Frame for active sub-tab
            contentFrame = new FrameLayout(ctx);
            contentFrame.setLayoutParams(new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    0,
                    1.0f
            ));

            // Default initial view: Sculpt
            contentFrame.addView(sculptSubTab.getView());
            rootLayout.addView(contentFrame);
        }

        return rootLayout;
    }

    private Button createTabButton(Context ctx, String title, View subTabView) {
        Button btn = new Button(ctx);
        btn.setText(title);
        btn.setTextSize(11);
        btn.setTextColor(Color.WHITE);
        btn.setPadding(16, 8, 16, 8);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(160, 40, 48, 60));
        bg.setCornerRadius(6);
        btn.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );
        lp.setMargins(4, 0, 4, 0);
        btn.setLayoutParams(lp);

        btn.setOnClickListener(v -> {
            contentFrame.removeAllViews();
            contentFrame.addView(subTabView);
        });

        return btn;
    }
}
