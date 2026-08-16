package com.jme3.system;

import java.util.ArrayList;

public class Displays {
    private ArrayList<DisplayInfo> displays = new ArrayList<>();

    public int addNewMonitor(long j10) {
        DisplayInfo displayInfo = new DisplayInfo();
        displayInfo.setDisplay(j10);
        this.displays.add(displayInfo);
        return this.displays.size() - 1;
    }

    public DisplayInfo get(int i10) {
        if (i10 < this.displays.size()) {
            return this.displays.get(i10);
        }
        return null;
    }

    public void setInfo(int i10, String str, int i11, int i12, int i13) {
        DisplayInfo displayInfo;
        if (i10 >= this.displays.size() || (displayInfo = this.displays.get(i10)) == null) {
            return;
        }
        displayInfo.setWidth(i11);
        displayInfo.setHeight(i12);
        displayInfo.setRate(i13);
        displayInfo.setName(str);
    }

    public void setPrimaryDisplay(int i10) {
        DisplayInfo displayInfo;
        if (i10 >= this.displays.size() || (displayInfo = this.displays.get(i10)) == null) {
            return;
        }
        displayInfo.setPrimary(true);
    }

    public int size() {
        return this.displays.size();
    }
}
