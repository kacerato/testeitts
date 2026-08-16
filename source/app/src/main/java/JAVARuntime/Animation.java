package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Animation.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Animation.class
  classes.dex
 */
@ClassCategory(cat = {"Animations"})
public final class Animation {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Animation$EntryType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Animation$EntryType.class
  classes.dex
 */
    public enum EntryType {
        FLOAT,
        INT,
        COLOR,
        VEC3,
        VEC2,
        QUAT,
        VEC2I,
        UVEC2I,
        SQUARE5I,
        IMAGE,
        EVENTS;

        public static EntryType[] valuesCustom() {
            EntryType[] valuesCustom = values();
            int length = valuesCustom.length;
            EntryType[] entryTypeArr = new EntryType[length];
            java.lang.System.arraycopy(valuesCustom, 0, entryTypeArr, 0, length);
            return entryTypeArr;
        }
    }

    @HideGetSet
    public AnimationMask getMask() {
        return null;
    }

    @HideGetSet
    public void setMask(AnimationMask animationMask) {
    }

    @HideGetSet
    public float getWeight() {
        return 0.0f;
    }

    @HideGetSet
    public void setWeight(float f10) {
    }

    @HideGetSet
    public float getSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setSpeed(float f10) {
    }

    @HideGetSet
    public float getFps() {
        return 0.0f;
    }

    @HideGetSet
    public void setFps(int i10) {
    }

    public void play() {
    }

    public void playInLoop() {
    }

    public void stop() {
    }

    public void stopLoop() {
    }

    public boolean isPlaying() {
        return false;
    }

    public boolean isLoop() {
        return false;
    }

    @UnimplementedDoc
    @HideGetSet
    public float getFrameTime() {
        return 0.0f;
    }

    @UnimplementedDoc
    @HideGetSet
    public void setFrameTime(float f10) {
    }

    @UnimplementedDoc
    @HideGetSet
    public int getTimeLineCount() {
        return 0;
    }

    @UnimplementedDoc
    public TimeLine getTimeLineAt(int i10) {
        return null;
    }

    @UnimplementedDoc
    public void addTimeLine(TimeLine timeLine) {
    }

    @UnimplementedDoc
    public void removeTimeLine(TimeLine timeLine) {
    }

    public int getLength() {
        return 0;
    }

    @UnimplementedDoc
    public void sortFrames() {
    }

    public static Animation loadFile(AnimationFile animationFile) {
        return null;
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Animation$TimeLine.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Animation$TimeLine.class
  classes.dex
 */
    public final class TimeLine {
        @UnimplementedDoc
        public TimeLine() {
        }

        @UnimplementedDoc
        @HideGetSet
        public int getFrameCount() {
            return 0;
        }

        @UnimplementedDoc
        public Frame getFrameAt(int i10) {
            return null;
        }

        @UnimplementedDoc
        public void addFrame(Frame frame) {
        }

        @UnimplementedDoc
        public void removeFrame(Frame frame) {
        }

        @HideGetSet
        public String getEntryName() {
            return null;
        }

        @HideGetSet
        public void setEntryName(String str) {
        }

        @HideGetSet
        public String getObjectUID() {
            return null;
        }

        @HideGetSet
        public String getComponentUID() {
            return null;
        }

        @HideGetSet
        public EntryType getType() {
            return null;
        }

        @HideGetSet
        public void setType(EntryType entryType) {
        }

        @HideGetSet
        public int getLength() {
            return 0;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Animation$Frame.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Animation$Frame.class
  classes.dex
 */
    public final class Frame {
        @UnimplementedDoc
        public Frame() {
        }

        @UnimplementedDoc
        @HideGetSet
        public int getFrameTime() {
            return 0;
        }

        @UnimplementedDoc
        @HideGetSet
        public void setFrameTime(int i10) {
        }

        @HideGetSet
        public Vector3 getVec3Value() {
            return null;
        }

        public void setVec3Value(Vector3 vector3) {
        }

        @HideGetSet
        public Vector2 getVec2Value() {
            return null;
        }

        public void setVec2Value(Vector2 vector2) {
        }

        @HideGetSet
        public Quaternion getQuatValue() {
            return null;
        }

        public void setQuatValue(Quaternion quaternion) {
        }

        @HideGetSet
        public Color getColorValue() {
            return null;
        }

        public void setColorValue(Color color) {
        }

        @HideGetSet
        public float getFloatValue() {
            return 0.0f;
        }

        public void setFloatValue(float f10) {
        }

        @HideGetSet
        public int getIntValue() {
            return 0;
        }

        public void setIntValue(int i10) {
        }

        @HideGetSet
        public String getImageValue() {
            return null;
        }

        public void setImageValue(String str) {
        }
    }
}
