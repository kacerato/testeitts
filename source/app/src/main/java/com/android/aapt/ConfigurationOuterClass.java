package com.android.aapt;

import android.util.Half;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12661c;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.B1;
import com.google.protobuf.C12658b0;
import com.google.protobuf.C12666d0;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.InterfaceC12670e1;
import com.google.protobuf.InterfaceC12723w1;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.r2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class ConfigurationOuterClass {
    private static Descriptors.g descriptor = Descriptors.g.B(new String[]{"\n\u0013Configuration.proto\u0012\u0007aapt.pb\"\u0097\u0016\n\rConfiguration\u0012\u000b\n\u0003mcc\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003mnc\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006locale\u0018\u0003 \u0001(\t\u0012@\n\u0010layout_direction\u0018\u0004 \u0001(\u000e2&.aapt.pb.Configuration.LayoutDirection\u0012\u0014\n\fscreen_width\u0018\u0005 \u0001(\r\u0012\u0015\n\rscreen_height\u0018\u0006 \u0001(\r\u0012\u0017\n\u000fscreen_width_dp\u0018\u0007 \u0001(\r\u0012\u0018\n\u0010screen_height_dp\u0018\b \u0001(\r\u0012 \n\u0018smallest_screen_width_dp\u0018\t \u0001(\r\u0012C\n\u0012screen_layout_size\u0018\n \u0001(\u000e2'.aapt.pb.Configuration.ScreenLayoutSize\u0012C\n\u0012screen_layout_long\u0018\u000b \u0001(\u000e2'.aapt.pb.Configuration.ScreenLayoutLong\u00128\n\fscreen_round\u0018\f \u0001(\u000e2\".aapt.pb.Configuration.ScreenRound\u0012?\n\u0010wide_color_gamut\u0018\r \u0001(\u000e2%.aapt.pb.Configuration.WideColorGamut\u0012'\n\u0003hdr\u0018\u000e \u0001(\u000e2\u001a.aapt.pb.Configuration.Hdr\u00127\n\u000borientation\u0018\u000f \u0001(\u000e2\".aapt.pb.Configuration.Orientation\u00127\n\fui_mode_type\u0018\u0010 \u0001(\u000e2!.aapt.pb.Configuration.UiModeType\u00129\n\rui_mode_night\u0018\u0011 \u0001(\u000e2\".aapt.pb.Configuration.UiModeNight\u0012\u000f\n\u0007density\u0018\u0012 \u0001(\r\u00127\n\u000btouchscreen\u0018\u0013 \u0001(\u000e2\".aapt.pb.Configuration.Touchscreen\u00126\n\u000bkeys_hidden\u0018\u0014 \u0001(\u000e2!.aapt.pb.Configuration.KeysHidden\u00121\n\bkeyboard\u0018\u0015 \u0001(\u000e2\u001f.aapt.pb.Configuration.Keyboard\u00124\n\nnav_hidden\u0018\u0016 \u0001(\u000e2 .aapt.pb.Configuration.NavHidden\u00125\n\nnavigation\u0018\u0017 \u0001(\u000e2!.aapt.pb.Configuration.Navigation\u0012\u0013\n\u000bsdk_version\u0018\u0018 \u0001(\r\u0012D\n\u0012grammatical_gender\u0018\u001a \u0001(\u000e2(.aapt.pb.Configuration.GrammaticalGender\u0012\u000f\n\u0007product\u0018\u0019 \u0001(\t\"a\n\u000fLayoutDirection\u0012\u001a\n\u0016LAYOUT_DIRECTION_UNSET\u0010\u0000\u0012\u0018\n\u0014LAYOUT_DIRECTION_LTR\u0010\u0001\u0012\u0018\n\u0014LAYOUT_DIRECTION_RTL\u0010\u0002\"\u00aa\u0001\n\u0010ScreenLayoutSize\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_UNSET\u0010\u0000\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_SMALL\u0010\u0001\u0012\u001d\n\u0019SCREEN_LAYOUT_SIZE_NORMAL\u0010\u0002\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_LARGE\u0010\u0003\u0012\u001d\n\u0019SCREEN_LAYOUT_SIZE_XLARGE\u0010\u0004\"m\n\u0010ScreenLayoutLong\u0012\u001c\n\u0018SCREEN_LAYOUT_LONG_UNSET\u0010\u0000\u0012\u001b\n\u0017SCREEN_LAYOUT_LONG_LONG\u0010\u0001\u0012\u001e\n\u001aSCREEN_LAYOUT_LONG_NOTLONG\u0010\u0002\"X\n\u000bScreenRound\u0012\u0016\n\u0012SCREEN_ROUND_UNSET\u0010\u0000\u0012\u0016\n\u0012SCREEN_ROUND_ROUND\u0010\u0001\u0012\u0019\n\u0015SCREEN_ROUND_NOTROUND\u0010\u0002\"h\n\u000eWideColorGamut\u0012\u001a\n\u0016WIDE_COLOR_GAMUT_UNSET\u0010\u0000\u0012\u001b\n\u0017WIDE_COLOR_GAMUT_WIDECG\u0010\u0001\u0012\u001d\n\u0019WIDE_COLOR_GAMUT_NOWIDECG\u0010\u0002\"3\n\u0003Hdr\u0012\r\n\tHDR_UNSET\u0010\u0000\u0012\u000e\n\nHDR_HIGHDR\u0010\u0001\u0012\r\n\tHDR_LOWDR\u0010\u0002\"h\n\u000bOrientation\u0012\u0015\n\u0011ORIENTATION_UNSET\u0010\u0000\u0012\u0014\n\u0010ORIENTATION_PORT\u0010\u0001\u0012\u0014\n\u0010ORIENTATION_LAND\u0010\u0002\u0012\u0016\n\u0012ORIENTATION_SQUARE\u0010\u0003\"\u00d7\u0001\n\nUiModeType\u0012\u0016\n\u0012UI_MODE_TYPE_UNSET\u0010\u0000\u0012\u0017\n\u0013UI_MODE_TYPE_NORMAL\u0010\u0001\u0012\u0015\n\u0011UI_MODE_TYPE_DESK\u0010\u0002\u0012\u0014\n\u0010UI_MODE_TYPE_CAR\u0010\u0003\u0012\u001b\n\u0017UI_MODE_TYPE_TELEVISION\u0010\u0004\u0012\u001a\n\u0016UI_MODE_TYPE_APPLIANCE\u0010\u0005\u0012\u0016\n\u0012UI_MODE_TYPE_WATCH\u0010\u0006\u0012\u001a\n\u0016UI_MODE_TYPE_VRHEADSET\u0010\u0007\"[\n\u000bUiModeNight\u0012\u0017\n\u0013UI_MODE_NIGHT_UNSET\u0010\u0000\u0012\u0017\n\u0013UI_MODE_NIGHT_NIGHT\u0010\u0001\u0012\u001a\n\u0016UI_MODE_NIGHT_NOTNIGHT\u0010\u0002\"m\n\u000bTouchscreen\u0012\u0015\n\u0011TOUCHSCREEN_UNSET\u0010\u0000\u0012\u0017\n\u0013TOUCHSCREEN_NOTOUCH\u0010\u0001\u0012\u0016\n\u0012TOUCHSCREEN_STYLUS\u0010\u0002\u0012\u0016\n\u0012TOUCHSCREEN_FINGER\u0010\u0003\"v\n\nKeysHidden\u0012\u0015\n\u0011KEYS_HIDDEN_UNSET\u0010\u0000\u0012\u001b\n\u0017KEYS_HIDDEN_KEYSEXPOSED\u0010\u0001\u0012\u001a\n\u0016KEYS_HIDDEN_KEYSHIDDEN\u0010\u0002\u0012\u0018\n\u0014KEYS_HIDDEN_KEYSSOFT\u0010\u0003\"`\n\bKeyboard\u0012\u0012\n\u000eKEYBOARD_UNSET\u0010\u0000\u0012\u0013\n\u000fKEYBOARD_NOKEYS\u0010\u0001\u0012\u0013\n\u000fKEYBOARD_QWERTY\u0010\u0002\u0012\u0016\n\u0012KEYBOARD_TWELVEKEY\u0010\u0003\"V\n\tNavHidden\u0012\u0014\n\u0010NAV_HIDDEN_UNSET\u0010\u0000\u0012\u0019\n\u0015NAV_HIDDEN_NAVEXPOSED\u0010\u0001\u0012\u0018\n\u0014NAV_HIDDEN_NAVHIDDEN\u0010\u0002\"}\n\nNavigation\u0012\u0014\n\u0010NAVIGATION_UNSET\u0010\u0000\u0012\u0014\n\u0010NAVIGATION_NONAV\u0010\u0001\u0012\u0013\n\u000fNAVIGATION_DPAD\u0010\u0002\u0012\u0018\n\u0014NAVIGATION_TRACKBALL\u0010\u0003\u0012\u0014\n\u0010NAVIGATION_WHEEL\u0010\u0004\"v\n\u0011GrammaticalGender\u0012\u0014\n\u0010GRAM_GENDER_USET\u0010\u0000\u0012\u0016\n\u0012GRAM_GENDER_NEUTER\u0010\u0001\u0012\u0018\n\u0014GRAM_GENDER_FEMININE\u0010\u0002\u0012\u0019\n\u0015GRAM_GENDER_MASCULINE\u0010\u0003B\u0012\n\u0010com.android.aaptb\u0006proto3"}, new Descriptors.g[0]);
    private static final Descriptors.b internal_static_aapt_pb_Configuration_descriptor;
    private static final AbstractC12722w0.h internal_static_aapt_pb_Configuration_fieldAccessorTable;

    public static final class Configuration extends AbstractC12722w0 implements ConfigurationOrBuilder {
        public static final int DENSITY_FIELD_NUMBER = 18;
        public static final int GRAMMATICAL_GENDER_FIELD_NUMBER = 26;
        public static final int HDR_FIELD_NUMBER = 14;
        public static final int KEYBOARD_FIELD_NUMBER = 21;
        public static final int KEYS_HIDDEN_FIELD_NUMBER = 20;
        public static final int LAYOUT_DIRECTION_FIELD_NUMBER = 4;
        public static final int LOCALE_FIELD_NUMBER = 3;
        public static final int MCC_FIELD_NUMBER = 1;
        public static final int MNC_FIELD_NUMBER = 2;
        public static final int NAVIGATION_FIELD_NUMBER = 23;
        public static final int NAV_HIDDEN_FIELD_NUMBER = 22;
        public static final int ORIENTATION_FIELD_NUMBER = 15;
        public static final int PRODUCT_FIELD_NUMBER = 25;
        public static final int SCREEN_HEIGHT_DP_FIELD_NUMBER = 8;
        public static final int SCREEN_HEIGHT_FIELD_NUMBER = 6;
        public static final int SCREEN_LAYOUT_LONG_FIELD_NUMBER = 11;
        public static final int SCREEN_LAYOUT_SIZE_FIELD_NUMBER = 10;
        public static final int SCREEN_ROUND_FIELD_NUMBER = 12;
        public static final int SCREEN_WIDTH_DP_FIELD_NUMBER = 7;
        public static final int SCREEN_WIDTH_FIELD_NUMBER = 5;
        public static final int SDK_VERSION_FIELD_NUMBER = 24;
        public static final int SMALLEST_SCREEN_WIDTH_DP_FIELD_NUMBER = 9;
        public static final int TOUCHSCREEN_FIELD_NUMBER = 19;
        public static final int UI_MODE_NIGHT_FIELD_NUMBER = 17;
        public static final int UI_MODE_TYPE_FIELD_NUMBER = 16;
        public static final int WIDE_COLOR_GAMUT_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private int density_;
        private int grammaticalGender_;
        private int hdr_;
        private int keyboard_;
        private int keysHidden_;
        private int layoutDirection_;
        private volatile Object locale_;
        private int mcc_;
        private byte memoizedIsInitialized;
        private int mnc_;
        private int navHidden_;
        private int navigation_;
        private int orientation_;
        private volatile Object product_;
        private int screenHeightDp_;
        private int screenHeight_;
        private int screenLayoutLong_;
        private int screenLayoutSize_;
        private int screenRound_;
        private int screenWidthDp_;
        private int screenWidth_;
        private int sdkVersion_;
        private int smallestScreenWidthDp_;
        private int touchscreen_;
        private int uiModeNight_;
        private int uiModeType_;
        private int wideColorGamut_;
        private static final Configuration DEFAULT_INSTANCE = new Configuration();
        private static final InterfaceC12723w1<Configuration> PARSER = new AbstractC12661c<Configuration>() {
            @Override
            public Configuration parsePartialFrom(com.google.protobuf.C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                Builder newBuilder = Configuration.newBuilder();
                try {
                    newBuilder.mergeFrom(c10, c12666d0);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (UninitializedMessageException e11) {
                    throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e12) {
                    throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        };

        public enum GrammaticalGender implements B1 {
            GRAM_GENDER_USET(0),
            GRAM_GENDER_NEUTER(1),
            GRAM_GENDER_FEMININE(2),
            GRAM_GENDER_MASCULINE(3),
            UNRECOGNIZED(-1);

            public static final int GRAM_GENDER_FEMININE_VALUE = 2;
            public static final int GRAM_GENDER_MASCULINE_VALUE = 3;
            public static final int GRAM_GENDER_NEUTER_VALUE = 1;
            public static final int GRAM_GENDER_USET_VALUE = 0;
            private final int value;
            private static final D0.d<GrammaticalGender> internalValueMap = new D0.d<GrammaticalGender>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public GrammaticalGender findValueByNumber(int i10) {
                    return GrammaticalGender.forNumber(i10);
                }
            };
            private static final GrammaticalGender[] VALUES = values();

            GrammaticalGender(int i10) {
                this.value = i10;
            }

            public static GrammaticalGender forNumber(int i10) {
                if (i10 == 0) {
                    return GRAM_GENDER_USET;
                }
                if (i10 == 1) {
                    return GRAM_GENDER_NEUTER;
                }
                if (i10 == 2) {
                    return GRAM_GENDER_FEMININE;
                }
                if (i10 != 3) {
                    return null;
                }
                return GRAM_GENDER_MASCULINE;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(14);
            }

            public static D0.d<GrammaticalGender> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static GrammaticalGender valueOf(int i10) {
                return forNumber(i10);
            }

            public static GrammaticalGender valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum Hdr implements B1 {
            HDR_UNSET(0),
            HDR_HIGHDR(1),
            HDR_LOWDR(2),
            UNRECOGNIZED(-1);

            public static final int HDR_HIGHDR_VALUE = 1;
            public static final int HDR_LOWDR_VALUE = 2;
            public static final int HDR_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<Hdr> internalValueMap = new D0.d<Hdr>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Hdr findValueByNumber(int i10) {
                    return Hdr.forNumber(i10);
                }
            };
            private static final Hdr[] VALUES = values();

            Hdr(int i10) {
                this.value = i10;
            }

            public static Hdr forNumber(int i10) {
                if (i10 == 0) {
                    return HDR_UNSET;
                }
                if (i10 == 1) {
                    return HDR_HIGHDR;
                }
                if (i10 != 2) {
                    return null;
                }
                return HDR_LOWDR;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(5);
            }

            public static D0.d<Hdr> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static Hdr valueOf(int i10) {
                return forNumber(i10);
            }

            public static Hdr valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum Keyboard implements B1 {
            KEYBOARD_UNSET(0),
            KEYBOARD_NOKEYS(1),
            KEYBOARD_QWERTY(2),
            KEYBOARD_TWELVEKEY(3),
            UNRECOGNIZED(-1);

            public static final int KEYBOARD_NOKEYS_VALUE = 1;
            public static final int KEYBOARD_QWERTY_VALUE = 2;
            public static final int KEYBOARD_TWELVEKEY_VALUE = 3;
            public static final int KEYBOARD_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<Keyboard> internalValueMap = new D0.d<Keyboard>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Keyboard findValueByNumber(int i10) {
                    return Keyboard.forNumber(i10);
                }
            };
            private static final Keyboard[] VALUES = values();

            Keyboard(int i10) {
                this.value = i10;
            }

            public static Keyboard forNumber(int i10) {
                if (i10 == 0) {
                    return KEYBOARD_UNSET;
                }
                if (i10 == 1) {
                    return KEYBOARD_NOKEYS;
                }
                if (i10 == 2) {
                    return KEYBOARD_QWERTY;
                }
                if (i10 != 3) {
                    return null;
                }
                return KEYBOARD_TWELVEKEY;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(11);
            }

            public static D0.d<Keyboard> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static Keyboard valueOf(int i10) {
                return forNumber(i10);
            }

            public static Keyboard valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum KeysHidden implements B1 {
            KEYS_HIDDEN_UNSET(0),
            KEYS_HIDDEN_KEYSEXPOSED(1),
            KEYS_HIDDEN_KEYSHIDDEN(2),
            KEYS_HIDDEN_KEYSSOFT(3),
            UNRECOGNIZED(-1);

            public static final int KEYS_HIDDEN_KEYSEXPOSED_VALUE = 1;
            public static final int KEYS_HIDDEN_KEYSHIDDEN_VALUE = 2;
            public static final int KEYS_HIDDEN_KEYSSOFT_VALUE = 3;
            public static final int KEYS_HIDDEN_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<KeysHidden> internalValueMap = new D0.d<KeysHidden>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public KeysHidden findValueByNumber(int i10) {
                    return KeysHidden.forNumber(i10);
                }
            };
            private static final KeysHidden[] VALUES = values();

            KeysHidden(int i10) {
                this.value = i10;
            }

            public static KeysHidden forNumber(int i10) {
                if (i10 == 0) {
                    return KEYS_HIDDEN_UNSET;
                }
                if (i10 == 1) {
                    return KEYS_HIDDEN_KEYSEXPOSED;
                }
                if (i10 == 2) {
                    return KEYS_HIDDEN_KEYSHIDDEN;
                }
                if (i10 != 3) {
                    return null;
                }
                return KEYS_HIDDEN_KEYSSOFT;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(10);
            }

            public static D0.d<KeysHidden> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static KeysHidden valueOf(int i10) {
                return forNumber(i10);
            }

            public static KeysHidden valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum LayoutDirection implements B1 {
            LAYOUT_DIRECTION_UNSET(0),
            LAYOUT_DIRECTION_LTR(1),
            LAYOUT_DIRECTION_RTL(2),
            UNRECOGNIZED(-1);

            public static final int LAYOUT_DIRECTION_LTR_VALUE = 1;
            public static final int LAYOUT_DIRECTION_RTL_VALUE = 2;
            public static final int LAYOUT_DIRECTION_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<LayoutDirection> internalValueMap = new D0.d<LayoutDirection>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public LayoutDirection findValueByNumber(int i10) {
                    return LayoutDirection.forNumber(i10);
                }
            };
            private static final LayoutDirection[] VALUES = values();

            LayoutDirection(int i10) {
                this.value = i10;
            }

            public static LayoutDirection forNumber(int i10) {
                if (i10 == 0) {
                    return LAYOUT_DIRECTION_UNSET;
                }
                if (i10 == 1) {
                    return LAYOUT_DIRECTION_LTR;
                }
                if (i10 != 2) {
                    return null;
                }
                return LAYOUT_DIRECTION_RTL;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(0);
            }

            public static D0.d<LayoutDirection> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static LayoutDirection valueOf(int i10) {
                return forNumber(i10);
            }

            public static LayoutDirection valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum NavHidden implements B1 {
            NAV_HIDDEN_UNSET(0),
            NAV_HIDDEN_NAVEXPOSED(1),
            NAV_HIDDEN_NAVHIDDEN(2),
            UNRECOGNIZED(-1);

            public static final int NAV_HIDDEN_NAVEXPOSED_VALUE = 1;
            public static final int NAV_HIDDEN_NAVHIDDEN_VALUE = 2;
            public static final int NAV_HIDDEN_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<NavHidden> internalValueMap = new D0.d<NavHidden>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public NavHidden findValueByNumber(int i10) {
                    return NavHidden.forNumber(i10);
                }
            };
            private static final NavHidden[] VALUES = values();

            NavHidden(int i10) {
                this.value = i10;
            }

            public static NavHidden forNumber(int i10) {
                if (i10 == 0) {
                    return NAV_HIDDEN_UNSET;
                }
                if (i10 == 1) {
                    return NAV_HIDDEN_NAVEXPOSED;
                }
                if (i10 != 2) {
                    return null;
                }
                return NAV_HIDDEN_NAVHIDDEN;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(12);
            }

            public static D0.d<NavHidden> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static NavHidden valueOf(int i10) {
                return forNumber(i10);
            }

            public static NavHidden valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum Navigation implements B1 {
            NAVIGATION_UNSET(0),
            NAVIGATION_NONAV(1),
            NAVIGATION_DPAD(2),
            NAVIGATION_TRACKBALL(3),
            NAVIGATION_WHEEL(4),
            UNRECOGNIZED(-1);

            public static final int NAVIGATION_DPAD_VALUE = 2;
            public static final int NAVIGATION_NONAV_VALUE = 1;
            public static final int NAVIGATION_TRACKBALL_VALUE = 3;
            public static final int NAVIGATION_UNSET_VALUE = 0;
            public static final int NAVIGATION_WHEEL_VALUE = 4;
            private final int value;
            private static final D0.d<Navigation> internalValueMap = new D0.d<Navigation>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Navigation findValueByNumber(int i10) {
                    return Navigation.forNumber(i10);
                }
            };
            private static final Navigation[] VALUES = values();

            Navigation(int i10) {
                this.value = i10;
            }

            public static Navigation forNumber(int i10) {
                if (i10 == 0) {
                    return NAVIGATION_UNSET;
                }
                if (i10 == 1) {
                    return NAVIGATION_NONAV;
                }
                if (i10 == 2) {
                    return NAVIGATION_DPAD;
                }
                if (i10 == 3) {
                    return NAVIGATION_TRACKBALL;
                }
                if (i10 != 4) {
                    return null;
                }
                return NAVIGATION_WHEEL;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(13);
            }

            public static D0.d<Navigation> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static Navigation valueOf(int i10) {
                return forNumber(i10);
            }

            public static Navigation valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum Orientation implements B1 {
            ORIENTATION_UNSET(0),
            ORIENTATION_PORT(1),
            ORIENTATION_LAND(2),
            ORIENTATION_SQUARE(3),
            UNRECOGNIZED(-1);

            public static final int ORIENTATION_LAND_VALUE = 2;
            public static final int ORIENTATION_PORT_VALUE = 1;
            public static final int ORIENTATION_SQUARE_VALUE = 3;
            public static final int ORIENTATION_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<Orientation> internalValueMap = new D0.d<Orientation>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Orientation findValueByNumber(int i10) {
                    return Orientation.forNumber(i10);
                }
            };
            private static final Orientation[] VALUES = values();

            Orientation(int i10) {
                this.value = i10;
            }

            public static Orientation forNumber(int i10) {
                if (i10 == 0) {
                    return ORIENTATION_UNSET;
                }
                if (i10 == 1) {
                    return ORIENTATION_PORT;
                }
                if (i10 == 2) {
                    return ORIENTATION_LAND;
                }
                if (i10 != 3) {
                    return null;
                }
                return ORIENTATION_SQUARE;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(6);
            }

            public static D0.d<Orientation> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static Orientation valueOf(int i10) {
                return forNumber(i10);
            }

            public static Orientation valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum ScreenLayoutLong implements B1 {
            SCREEN_LAYOUT_LONG_UNSET(0),
            SCREEN_LAYOUT_LONG_LONG(1),
            SCREEN_LAYOUT_LONG_NOTLONG(2),
            UNRECOGNIZED(-1);

            public static final int SCREEN_LAYOUT_LONG_LONG_VALUE = 1;
            public static final int SCREEN_LAYOUT_LONG_NOTLONG_VALUE = 2;
            public static final int SCREEN_LAYOUT_LONG_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<ScreenLayoutLong> internalValueMap = new D0.d<ScreenLayoutLong>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public ScreenLayoutLong findValueByNumber(int i10) {
                    return ScreenLayoutLong.forNumber(i10);
                }
            };
            private static final ScreenLayoutLong[] VALUES = values();

            ScreenLayoutLong(int i10) {
                this.value = i10;
            }

            public static ScreenLayoutLong forNumber(int i10) {
                if (i10 == 0) {
                    return SCREEN_LAYOUT_LONG_UNSET;
                }
                if (i10 == 1) {
                    return SCREEN_LAYOUT_LONG_LONG;
                }
                if (i10 != 2) {
                    return null;
                }
                return SCREEN_LAYOUT_LONG_NOTLONG;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(2);
            }

            public static D0.d<ScreenLayoutLong> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static ScreenLayoutLong valueOf(int i10) {
                return forNumber(i10);
            }

            public static ScreenLayoutLong valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum ScreenLayoutSize implements B1 {
            SCREEN_LAYOUT_SIZE_UNSET(0),
            SCREEN_LAYOUT_SIZE_SMALL(1),
            SCREEN_LAYOUT_SIZE_NORMAL(2),
            SCREEN_LAYOUT_SIZE_LARGE(3),
            SCREEN_LAYOUT_SIZE_XLARGE(4),
            UNRECOGNIZED(-1);

            public static final int SCREEN_LAYOUT_SIZE_LARGE_VALUE = 3;
            public static final int SCREEN_LAYOUT_SIZE_NORMAL_VALUE = 2;
            public static final int SCREEN_LAYOUT_SIZE_SMALL_VALUE = 1;
            public static final int SCREEN_LAYOUT_SIZE_UNSET_VALUE = 0;
            public static final int SCREEN_LAYOUT_SIZE_XLARGE_VALUE = 4;
            private final int value;
            private static final D0.d<ScreenLayoutSize> internalValueMap = new D0.d<ScreenLayoutSize>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public ScreenLayoutSize findValueByNumber(int i10) {
                    return ScreenLayoutSize.forNumber(i10);
                }
            };
            private static final ScreenLayoutSize[] VALUES = values();

            ScreenLayoutSize(int i10) {
                this.value = i10;
            }

            public static ScreenLayoutSize forNumber(int i10) {
                if (i10 == 0) {
                    return SCREEN_LAYOUT_SIZE_UNSET;
                }
                if (i10 == 1) {
                    return SCREEN_LAYOUT_SIZE_SMALL;
                }
                if (i10 == 2) {
                    return SCREEN_LAYOUT_SIZE_NORMAL;
                }
                if (i10 == 3) {
                    return SCREEN_LAYOUT_SIZE_LARGE;
                }
                if (i10 != 4) {
                    return null;
                }
                return SCREEN_LAYOUT_SIZE_XLARGE;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(1);
            }

            public static D0.d<ScreenLayoutSize> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static ScreenLayoutSize valueOf(int i10) {
                return forNumber(i10);
            }

            public static ScreenLayoutSize valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum ScreenRound implements B1 {
            SCREEN_ROUND_UNSET(0),
            SCREEN_ROUND_ROUND(1),
            SCREEN_ROUND_NOTROUND(2),
            UNRECOGNIZED(-1);

            public static final int SCREEN_ROUND_NOTROUND_VALUE = 2;
            public static final int SCREEN_ROUND_ROUND_VALUE = 1;
            public static final int SCREEN_ROUND_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<ScreenRound> internalValueMap = new D0.d<ScreenRound>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public ScreenRound findValueByNumber(int i10) {
                    return ScreenRound.forNumber(i10);
                }
            };
            private static final ScreenRound[] VALUES = values();

            ScreenRound(int i10) {
                this.value = i10;
            }

            public static ScreenRound forNumber(int i10) {
                if (i10 == 0) {
                    return SCREEN_ROUND_UNSET;
                }
                if (i10 == 1) {
                    return SCREEN_ROUND_ROUND;
                }
                if (i10 != 2) {
                    return null;
                }
                return SCREEN_ROUND_NOTROUND;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(3);
            }

            public static D0.d<ScreenRound> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static ScreenRound valueOf(int i10) {
                return forNumber(i10);
            }

            public static ScreenRound valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum Touchscreen implements B1 {
            TOUCHSCREEN_UNSET(0),
            TOUCHSCREEN_NOTOUCH(1),
            TOUCHSCREEN_STYLUS(2),
            TOUCHSCREEN_FINGER(3),
            UNRECOGNIZED(-1);

            public static final int TOUCHSCREEN_FINGER_VALUE = 3;
            public static final int TOUCHSCREEN_NOTOUCH_VALUE = 1;
            public static final int TOUCHSCREEN_STYLUS_VALUE = 2;
            public static final int TOUCHSCREEN_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<Touchscreen> internalValueMap = new D0.d<Touchscreen>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Touchscreen findValueByNumber(int i10) {
                    return Touchscreen.forNumber(i10);
                }
            };
            private static final Touchscreen[] VALUES = values();

            Touchscreen(int i10) {
                this.value = i10;
            }

            public static Touchscreen forNumber(int i10) {
                if (i10 == 0) {
                    return TOUCHSCREEN_UNSET;
                }
                if (i10 == 1) {
                    return TOUCHSCREEN_NOTOUCH;
                }
                if (i10 == 2) {
                    return TOUCHSCREEN_STYLUS;
                }
                if (i10 != 3) {
                    return null;
                }
                return TOUCHSCREEN_FINGER;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(9);
            }

            public static D0.d<Touchscreen> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static Touchscreen valueOf(int i10) {
                return forNumber(i10);
            }

            public static Touchscreen valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum UiModeNight implements B1 {
            UI_MODE_NIGHT_UNSET(0),
            UI_MODE_NIGHT_NIGHT(1),
            UI_MODE_NIGHT_NOTNIGHT(2),
            UNRECOGNIZED(-1);

            public static final int UI_MODE_NIGHT_NIGHT_VALUE = 1;
            public static final int UI_MODE_NIGHT_NOTNIGHT_VALUE = 2;
            public static final int UI_MODE_NIGHT_UNSET_VALUE = 0;
            private final int value;
            private static final D0.d<UiModeNight> internalValueMap = new D0.d<UiModeNight>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public UiModeNight findValueByNumber(int i10) {
                    return UiModeNight.forNumber(i10);
                }
            };
            private static final UiModeNight[] VALUES = values();

            UiModeNight(int i10) {
                this.value = i10;
            }

            public static UiModeNight forNumber(int i10) {
                if (i10 == 0) {
                    return UI_MODE_NIGHT_UNSET;
                }
                if (i10 == 1) {
                    return UI_MODE_NIGHT_NIGHT;
                }
                if (i10 != 2) {
                    return null;
                }
                return UI_MODE_NIGHT_NOTNIGHT;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(8);
            }

            public static D0.d<UiModeNight> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static UiModeNight valueOf(int i10) {
                return forNumber(i10);
            }

            public static UiModeNight valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum UiModeType implements B1 {
            UI_MODE_TYPE_UNSET(0),
            UI_MODE_TYPE_NORMAL(1),
            UI_MODE_TYPE_DESK(2),
            UI_MODE_TYPE_CAR(3),
            UI_MODE_TYPE_TELEVISION(4),
            UI_MODE_TYPE_APPLIANCE(5),
            UI_MODE_TYPE_WATCH(6),
            UI_MODE_TYPE_VRHEADSET(7),
            UNRECOGNIZED(-1);

            public static final int UI_MODE_TYPE_APPLIANCE_VALUE = 5;
            public static final int UI_MODE_TYPE_CAR_VALUE = 3;
            public static final int UI_MODE_TYPE_DESK_VALUE = 2;
            public static final int UI_MODE_TYPE_NORMAL_VALUE = 1;
            public static final int UI_MODE_TYPE_TELEVISION_VALUE = 4;
            public static final int UI_MODE_TYPE_UNSET_VALUE = 0;
            public static final int UI_MODE_TYPE_VRHEADSET_VALUE = 7;
            public static final int UI_MODE_TYPE_WATCH_VALUE = 6;
            private final int value;
            private static final D0.d<UiModeType> internalValueMap = new D0.d<UiModeType>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public UiModeType findValueByNumber(int i10) {
                    return UiModeType.forNumber(i10);
                }
            };
            private static final UiModeType[] VALUES = values();

            UiModeType(int i10) {
                this.value = i10;
            }

            public static UiModeType forNumber(int i10) {
                switch (i10) {
                    case 0:
                        return UI_MODE_TYPE_UNSET;
                    case 1:
                        return UI_MODE_TYPE_NORMAL;
                    case 2:
                        return UI_MODE_TYPE_DESK;
                    case 3:
                        return UI_MODE_TYPE_CAR;
                    case 4:
                        return UI_MODE_TYPE_TELEVISION;
                    case 5:
                        return UI_MODE_TYPE_APPLIANCE;
                    case 6:
                        return UI_MODE_TYPE_WATCH;
                    case 7:
                        return UI_MODE_TYPE_VRHEADSET;
                    default:
                        return null;
                }
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(7);
            }

            public static D0.d<UiModeType> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static UiModeType valueOf(int i10) {
                return forNumber(i10);
            }

            public static UiModeType valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum WideColorGamut implements B1 {
            WIDE_COLOR_GAMUT_UNSET(0),
            WIDE_COLOR_GAMUT_WIDECG(1),
            WIDE_COLOR_GAMUT_NOWIDECG(2),
            UNRECOGNIZED(-1);

            public static final int WIDE_COLOR_GAMUT_NOWIDECG_VALUE = 2;
            public static final int WIDE_COLOR_GAMUT_UNSET_VALUE = 0;
            public static final int WIDE_COLOR_GAMUT_WIDECG_VALUE = 1;
            private final int value;
            private static final D0.d<WideColorGamut> internalValueMap = new D0.d<WideColorGamut>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public WideColorGamut findValueByNumber(int i10) {
                    return WideColorGamut.forNumber(i10);
                }
            };
            private static final WideColorGamut[] VALUES = values();

            WideColorGamut(int i10) {
                this.value = i10;
            }

            public static WideColorGamut forNumber(int i10) {
                if (i10 == 0) {
                    return WIDE_COLOR_GAMUT_UNSET;
                }
                if (i10 == 1) {
                    return WIDE_COLOR_GAMUT_WIDECG;
                }
                if (i10 != 2) {
                    return null;
                }
                return WIDE_COLOR_GAMUT_NOWIDECG;
            }

            public static final Descriptors.d getDescriptor() {
                return Configuration.getDescriptor().q().get(4);
            }

            public static D0.d<WideColorGamut> internalGetValueMap() {
                return internalValueMap;
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().t().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static WideColorGamut valueOf(int i10) {
                return forNumber(i10);
            }

            public static WideColorGamut valueOf(Descriptors.e eVar) {
                if (eVar.i() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public static Configuration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return ConfigurationOuterClass.internal_static_aapt_pb_Configuration_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Configuration) AbstractC12722w0.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static InterfaceC12723w1<Configuration> parser() {
            return PARSER;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Configuration)) {
                return super.equals(obj);
            }
            Configuration configuration = (Configuration) obj;
            return getMcc() == configuration.getMcc() && getMnc() == configuration.getMnc() && getLocale().equals(configuration.getLocale()) && this.layoutDirection_ == configuration.layoutDirection_ && getScreenWidth() == configuration.getScreenWidth() && getScreenHeight() == configuration.getScreenHeight() && getScreenWidthDp() == configuration.getScreenWidthDp() && getScreenHeightDp() == configuration.getScreenHeightDp() && getSmallestScreenWidthDp() == configuration.getSmallestScreenWidthDp() && this.screenLayoutSize_ == configuration.screenLayoutSize_ && this.screenLayoutLong_ == configuration.screenLayoutLong_ && this.screenRound_ == configuration.screenRound_ && this.wideColorGamut_ == configuration.wideColorGamut_ && this.hdr_ == configuration.hdr_ && this.orientation_ == configuration.orientation_ && this.uiModeType_ == configuration.uiModeType_ && this.uiModeNight_ == configuration.uiModeNight_ && getDensity() == configuration.getDensity() && this.touchscreen_ == configuration.touchscreen_ && this.keysHidden_ == configuration.keysHidden_ && this.keyboard_ == configuration.keyboard_ && this.navHidden_ == configuration.navHidden_ && this.navigation_ == configuration.navigation_ && getSdkVersion() == configuration.getSdkVersion() && this.grammaticalGender_ == configuration.grammaticalGender_ && getProduct().equals(configuration.getProduct()) && getUnknownFields().equals(configuration.getUnknownFields());
        }

        @Override
        public int getDensity() {
            return this.density_;
        }

        @Override
        public GrammaticalGender getGrammaticalGender() {
            GrammaticalGender forNumber = GrammaticalGender.forNumber(this.grammaticalGender_);
            return forNumber == null ? GrammaticalGender.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getGrammaticalGenderValue() {
            return this.grammaticalGender_;
        }

        @Override
        public Hdr getHdr() {
            Hdr forNumber = Hdr.forNumber(this.hdr_);
            return forNumber == null ? Hdr.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getHdrValue() {
            return this.hdr_;
        }

        @Override
        public Keyboard getKeyboard() {
            Keyboard forNumber = Keyboard.forNumber(this.keyboard_);
            return forNumber == null ? Keyboard.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getKeyboardValue() {
            return this.keyboard_;
        }

        @Override
        public KeysHidden getKeysHidden() {
            KeysHidden forNumber = KeysHidden.forNumber(this.keysHidden_);
            return forNumber == null ? KeysHidden.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getKeysHiddenValue() {
            return this.keysHidden_;
        }

        @Override
        public LayoutDirection getLayoutDirection() {
            LayoutDirection forNumber = LayoutDirection.forNumber(this.layoutDirection_);
            return forNumber == null ? LayoutDirection.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getLayoutDirectionValue() {
            return this.layoutDirection_;
        }

        @Override
        public String getLocale() {
            Object obj = this.locale_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.locale_ = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getLocaleBytes() {
            Object obj = this.locale_;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.locale_ = w10;
            return w10;
        }

        @Override
        public int getMcc() {
            return this.mcc_;
        }

        @Override
        public int getMnc() {
            return this.mnc_;
        }

        @Override
        public NavHidden getNavHidden() {
            NavHidden forNumber = NavHidden.forNumber(this.navHidden_);
            return forNumber == null ? NavHidden.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getNavHiddenValue() {
            return this.navHidden_;
        }

        @Override
        public Navigation getNavigation() {
            Navigation forNumber = Navigation.forNumber(this.navigation_);
            return forNumber == null ? Navigation.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getNavigationValue() {
            return this.navigation_;
        }

        @Override
        public Orientation getOrientation() {
            Orientation forNumber = Orientation.forNumber(this.orientation_);
            return forNumber == null ? Orientation.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getOrientationValue() {
            return this.orientation_;
        }

        @Override
        public InterfaceC12723w1<Configuration> getParserForType() {
            return PARSER;
        }

        @Override
        public String getProduct() {
            Object obj = this.product_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.product_ = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getProductBytes() {
            Object obj = this.product_;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.product_ = w10;
            return w10;
        }

        @Override
        public int getScreenHeight() {
            return this.screenHeight_;
        }

        @Override
        public int getScreenHeightDp() {
            return this.screenHeightDp_;
        }

        @Override
        public ScreenLayoutLong getScreenLayoutLong() {
            ScreenLayoutLong forNumber = ScreenLayoutLong.forNumber(this.screenLayoutLong_);
            return forNumber == null ? ScreenLayoutLong.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getScreenLayoutLongValue() {
            return this.screenLayoutLong_;
        }

        @Override
        public ScreenLayoutSize getScreenLayoutSize() {
            ScreenLayoutSize forNumber = ScreenLayoutSize.forNumber(this.screenLayoutSize_);
            return forNumber == null ? ScreenLayoutSize.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getScreenLayoutSizeValue() {
            return this.screenLayoutSize_;
        }

        @Override
        public ScreenRound getScreenRound() {
            ScreenRound forNumber = ScreenRound.forNumber(this.screenRound_);
            return forNumber == null ? ScreenRound.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getScreenRoundValue() {
            return this.screenRound_;
        }

        @Override
        public int getScreenWidth() {
            return this.screenWidth_;
        }

        @Override
        public int getScreenWidthDp() {
            return this.screenWidthDp_;
        }

        @Override
        public int getSdkVersion() {
            return this.sdkVersion_;
        }

        @Override
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.mcc_;
            int Y02 = i11 != 0 ? CodedOutputStream.Y0(1, i11) : 0;
            int i12 = this.mnc_;
            if (i12 != 0) {
                Y02 += CodedOutputStream.Y0(2, i12);
            }
            if (!AbstractC12722w0.isStringEmpty(this.locale_)) {
                Y02 += AbstractC12722w0.computeStringSize(3, this.locale_);
            }
            if (this.layoutDirection_ != LayoutDirection.LAYOUT_DIRECTION_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(4, this.layoutDirection_);
            }
            int i13 = this.screenWidth_;
            if (i13 != 0) {
                Y02 += CodedOutputStream.Y0(5, i13);
            }
            int i14 = this.screenHeight_;
            if (i14 != 0) {
                Y02 += CodedOutputStream.Y0(6, i14);
            }
            int i15 = this.screenWidthDp_;
            if (i15 != 0) {
                Y02 += CodedOutputStream.Y0(7, i15);
            }
            int i16 = this.screenHeightDp_;
            if (i16 != 0) {
                Y02 += CodedOutputStream.Y0(8, i16);
            }
            int i17 = this.smallestScreenWidthDp_;
            if (i17 != 0) {
                Y02 += CodedOutputStream.Y0(9, i17);
            }
            if (this.screenLayoutSize_ != ScreenLayoutSize.SCREEN_LAYOUT_SIZE_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(10, this.screenLayoutSize_);
            }
            if (this.screenLayoutLong_ != ScreenLayoutLong.SCREEN_LAYOUT_LONG_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(11, this.screenLayoutLong_);
            }
            if (this.screenRound_ != ScreenRound.SCREEN_ROUND_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(12, this.screenRound_);
            }
            if (this.wideColorGamut_ != WideColorGamut.WIDE_COLOR_GAMUT_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(13, this.wideColorGamut_);
            }
            if (this.hdr_ != Hdr.HDR_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(14, this.hdr_);
            }
            if (this.orientation_ != Orientation.ORIENTATION_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(15, this.orientation_);
            }
            if (this.uiModeType_ != UiModeType.UI_MODE_TYPE_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(16, this.uiModeType_);
            }
            if (this.uiModeNight_ != UiModeNight.UI_MODE_NIGHT_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(17, this.uiModeNight_);
            }
            int i18 = this.density_;
            if (i18 != 0) {
                Y02 += CodedOutputStream.Y0(18, i18);
            }
            if (this.touchscreen_ != Touchscreen.TOUCHSCREEN_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(19, this.touchscreen_);
            }
            if (this.keysHidden_ != KeysHidden.KEYS_HIDDEN_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(20, this.keysHidden_);
            }
            if (this.keyboard_ != Keyboard.KEYBOARD_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(21, this.keyboard_);
            }
            if (this.navHidden_ != NavHidden.NAV_HIDDEN_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(22, this.navHidden_);
            }
            if (this.navigation_ != Navigation.NAVIGATION_UNSET.getNumber()) {
                Y02 += CodedOutputStream.k0(23, this.navigation_);
            }
            int i19 = this.sdkVersion_;
            if (i19 != 0) {
                Y02 += CodedOutputStream.Y0(24, i19);
            }
            if (!AbstractC12722w0.isStringEmpty(this.product_)) {
                Y02 += AbstractC12722w0.computeStringSize(25, this.product_);
            }
            if (this.grammaticalGender_ != GrammaticalGender.GRAM_GENDER_USET.getNumber()) {
                Y02 += CodedOutputStream.k0(26, this.grammaticalGender_);
            }
            int serializedSize = Y02 + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override
        public int getSmallestScreenWidthDp() {
            return this.smallestScreenWidthDp_;
        }

        @Override
        public Touchscreen getTouchscreen() {
            Touchscreen forNumber = Touchscreen.forNumber(this.touchscreen_);
            return forNumber == null ? Touchscreen.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getTouchscreenValue() {
            return this.touchscreen_;
        }

        @Override
        public UiModeNight getUiModeNight() {
            UiModeNight forNumber = UiModeNight.forNumber(this.uiModeNight_);
            return forNumber == null ? UiModeNight.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getUiModeNightValue() {
            return this.uiModeNight_;
        }

        @Override
        public UiModeType getUiModeType() {
            UiModeType forNumber = UiModeType.forNumber(this.uiModeType_);
            return forNumber == null ? UiModeType.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getUiModeTypeValue() {
            return this.uiModeType_;
        }

        @Override
        public WideColorGamut getWideColorGamut() {
            WideColorGamut forNumber = WideColorGamut.forNumber(this.wideColorGamut_);
            return forNumber == null ? WideColorGamut.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getWideColorGamutValue() {
            return this.wideColorGamut_;
        }

        @Override
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMcc()) * 37) + 2) * 53) + getMnc()) * 37) + 3) * 53) + getLocale().hashCode()) * 37) + 4) * 53) + this.layoutDirection_) * 37) + 5) * 53) + getScreenWidth()) * 37) + 6) * 53) + getScreenHeight()) * 37) + 7) * 53) + getScreenWidthDp()) * 37) + 8) * 53) + getScreenHeightDp()) * 37) + 9) * 53) + getSmallestScreenWidthDp()) * 37) + 10) * 53) + this.screenLayoutSize_) * 37) + 11) * 53) + this.screenLayoutLong_) * 37) + 12) * 53) + this.screenRound_) * 37) + 13) * 53) + this.wideColorGamut_) * 37) + 14) * 53) + this.hdr_) * 37) + 15) * 53) + this.orientation_) * 37) + 16) * 53) + this.uiModeType_) * 37) + 17) * 53) + this.uiModeNight_) * 37) + 18) * 53) + getDensity()) * 37) + 19) * 53) + this.touchscreen_) * 37) + 20) * 53) + this.keysHidden_) * 37) + 21) * 53) + this.keyboard_) * 37) + 22) * 53) + this.navHidden_) * 37) + 23) * 53) + this.navigation_) * 37) + 24) * 53) + getSdkVersion()) * 37) + 26) * 53) + this.grammaticalGender_) * 37) + 25) * 53) + getProduct().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return ConfigurationOuterClass.internal_static_aapt_pb_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
        }

        @Override
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override
        public Object newInstance(AbstractC12722w0.i iVar) {
            return new Configuration();
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i10 = this.mcc_;
            if (i10 != 0) {
                codedOutputStream.m(1, i10);
            }
            int i11 = this.mnc_;
            if (i11 != 0) {
                codedOutputStream.m(2, i11);
            }
            if (!AbstractC12722w0.isStringEmpty(this.locale_)) {
                AbstractC12722w0.writeString(codedOutputStream, 3, this.locale_);
            }
            if (this.layoutDirection_ != LayoutDirection.LAYOUT_DIRECTION_UNSET.getNumber()) {
                codedOutputStream.Q(4, this.layoutDirection_);
            }
            int i12 = this.screenWidth_;
            if (i12 != 0) {
                codedOutputStream.m(5, i12);
            }
            int i13 = this.screenHeight_;
            if (i13 != 0) {
                codedOutputStream.m(6, i13);
            }
            int i14 = this.screenWidthDp_;
            if (i14 != 0) {
                codedOutputStream.m(7, i14);
            }
            int i15 = this.screenHeightDp_;
            if (i15 != 0) {
                codedOutputStream.m(8, i15);
            }
            int i16 = this.smallestScreenWidthDp_;
            if (i16 != 0) {
                codedOutputStream.m(9, i16);
            }
            if (this.screenLayoutSize_ != ScreenLayoutSize.SCREEN_LAYOUT_SIZE_UNSET.getNumber()) {
                codedOutputStream.Q(10, this.screenLayoutSize_);
            }
            if (this.screenLayoutLong_ != ScreenLayoutLong.SCREEN_LAYOUT_LONG_UNSET.getNumber()) {
                codedOutputStream.Q(11, this.screenLayoutLong_);
            }
            if (this.screenRound_ != ScreenRound.SCREEN_ROUND_UNSET.getNumber()) {
                codedOutputStream.Q(12, this.screenRound_);
            }
            if (this.wideColorGamut_ != WideColorGamut.WIDE_COLOR_GAMUT_UNSET.getNumber()) {
                codedOutputStream.Q(13, this.wideColorGamut_);
            }
            if (this.hdr_ != Hdr.HDR_UNSET.getNumber()) {
                codedOutputStream.Q(14, this.hdr_);
            }
            if (this.orientation_ != Orientation.ORIENTATION_UNSET.getNumber()) {
                codedOutputStream.Q(15, this.orientation_);
            }
            if (this.uiModeType_ != UiModeType.UI_MODE_TYPE_UNSET.getNumber()) {
                codedOutputStream.Q(16, this.uiModeType_);
            }
            if (this.uiModeNight_ != UiModeNight.UI_MODE_NIGHT_UNSET.getNumber()) {
                codedOutputStream.Q(17, this.uiModeNight_);
            }
            int i17 = this.density_;
            if (i17 != 0) {
                codedOutputStream.m(18, i17);
            }
            if (this.touchscreen_ != Touchscreen.TOUCHSCREEN_UNSET.getNumber()) {
                codedOutputStream.Q(19, this.touchscreen_);
            }
            if (this.keysHidden_ != KeysHidden.KEYS_HIDDEN_UNSET.getNumber()) {
                codedOutputStream.Q(20, this.keysHidden_);
            }
            if (this.keyboard_ != Keyboard.KEYBOARD_UNSET.getNumber()) {
                codedOutputStream.Q(21, this.keyboard_);
            }
            if (this.navHidden_ != NavHidden.NAV_HIDDEN_UNSET.getNumber()) {
                codedOutputStream.Q(22, this.navHidden_);
            }
            if (this.navigation_ != Navigation.NAVIGATION_UNSET.getNumber()) {
                codedOutputStream.Q(23, this.navigation_);
            }
            int i18 = this.sdkVersion_;
            if (i18 != 0) {
                codedOutputStream.m(24, i18);
            }
            if (!AbstractC12722w0.isStringEmpty(this.product_)) {
                AbstractC12722w0.writeString(codedOutputStream, 25, this.product_);
            }
            if (this.grammaticalGender_ != GrammaticalGender.GRAM_GENDER_USET.getNumber()) {
                codedOutputStream.Q(26, this.grammaticalGender_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public static final class Builder extends AbstractC12722w0.b<Builder> implements ConfigurationOrBuilder {
            private int bitField0_;
            private int density_;
            private int grammaticalGender_;
            private int hdr_;
            private int keyboard_;
            private int keysHidden_;
            private int layoutDirection_;
            private Object locale_;
            private int mcc_;
            private int mnc_;
            private int navHidden_;
            private int navigation_;
            private int orientation_;
            private Object product_;
            private int screenHeightDp_;
            private int screenHeight_;
            private int screenLayoutLong_;
            private int screenLayoutSize_;
            private int screenRound_;
            private int screenWidthDp_;
            private int screenWidth_;
            private int sdkVersion_;
            private int smallestScreenWidthDp_;
            private int touchscreen_;
            private int uiModeNight_;
            private int uiModeType_;
            private int wideColorGamut_;

            private void buildPartial0(Configuration configuration) {
                int i10 = this.bitField0_;
                if ((i10 & 1) != 0) {
                    configuration.mcc_ = this.mcc_;
                }
                if ((i10 & 2) != 0) {
                    configuration.mnc_ = this.mnc_;
                }
                if ((i10 & 4) != 0) {
                    configuration.locale_ = this.locale_;
                }
                if ((i10 & 8) != 0) {
                    configuration.layoutDirection_ = this.layoutDirection_;
                }
                if ((i10 & 16) != 0) {
                    configuration.screenWidth_ = this.screenWidth_;
                }
                if ((i10 & 32) != 0) {
                    configuration.screenHeight_ = this.screenHeight_;
                }
                if ((i10 & 64) != 0) {
                    configuration.screenWidthDp_ = this.screenWidthDp_;
                }
                if ((i10 & 128) != 0) {
                    configuration.screenHeightDp_ = this.screenHeightDp_;
                }
                if ((i10 & 256) != 0) {
                    configuration.smallestScreenWidthDp_ = this.smallestScreenWidthDp_;
                }
                if ((i10 & 512) != 0) {
                    configuration.screenLayoutSize_ = this.screenLayoutSize_;
                }
                if ((i10 & 1024) != 0) {
                    configuration.screenLayoutLong_ = this.screenLayoutLong_;
                }
                if ((i10 & 2048) != 0) {
                    configuration.screenRound_ = this.screenRound_;
                }
                if ((i10 & 4096) != 0) {
                    configuration.wideColorGamut_ = this.wideColorGamut_;
                }
                if ((i10 & 8192) != 0) {
                    configuration.hdr_ = this.hdr_;
                }
                if ((i10 & 16384) != 0) {
                    configuration.orientation_ = this.orientation_;
                }
                if ((32768 & i10) != 0) {
                    configuration.uiModeType_ = this.uiModeType_;
                }
                if ((65536 & i10) != 0) {
                    configuration.uiModeNight_ = this.uiModeNight_;
                }
                if ((131072 & i10) != 0) {
                    configuration.density_ = this.density_;
                }
                if ((262144 & i10) != 0) {
                    configuration.touchscreen_ = this.touchscreen_;
                }
                if ((524288 & i10) != 0) {
                    configuration.keysHidden_ = this.keysHidden_;
                }
                if ((1048576 & i10) != 0) {
                    configuration.keyboard_ = this.keyboard_;
                }
                if ((2097152 & i10) != 0) {
                    configuration.navHidden_ = this.navHidden_;
                }
                if ((4194304 & i10) != 0) {
                    configuration.navigation_ = this.navigation_;
                }
                if ((8388608 & i10) != 0) {
                    configuration.sdkVersion_ = this.sdkVersion_;
                }
                if ((16777216 & i10) != 0) {
                    configuration.grammaticalGender_ = this.grammaticalGender_;
                }
                if ((i10 & 33554432) != 0) {
                    configuration.product_ = this.product_;
                }
            }

            public static final Descriptors.b getDescriptor() {
                return ConfigurationOuterClass.internal_static_aapt_pb_Configuration_descriptor;
            }

            public Builder clearDensity() {
                this.bitField0_ &= -131073;
                this.density_ = 0;
                onChanged();
                return this;
            }

            public Builder clearGrammaticalGender() {
                this.bitField0_ &= -16777217;
                this.grammaticalGender_ = 0;
                onChanged();
                return this;
            }

            public Builder clearHdr() {
                this.bitField0_ &= -8193;
                this.hdr_ = 0;
                onChanged();
                return this;
            }

            public Builder clearKeyboard() {
                this.bitField0_ &= -1048577;
                this.keyboard_ = 0;
                onChanged();
                return this;
            }

            public Builder clearKeysHidden() {
                this.bitField0_ &= -524289;
                this.keysHidden_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLayoutDirection() {
                this.bitField0_ &= -9;
                this.layoutDirection_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLocale() {
                this.locale_ = Configuration.getDefaultInstance().getLocale();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder clearMcc() {
                this.bitField0_ &= -2;
                this.mcc_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMnc() {
                this.bitField0_ &= -3;
                this.mnc_ = 0;
                onChanged();
                return this;
            }

            public Builder clearNavHidden() {
                this.bitField0_ &= -2097153;
                this.navHidden_ = 0;
                onChanged();
                return this;
            }

            public Builder clearNavigation() {
                this.bitField0_ &= -4194305;
                this.navigation_ = 0;
                onChanged();
                return this;
            }

            public Builder clearOrientation() {
                this.bitField0_ &= -16385;
                this.orientation_ = 0;
                onChanged();
                return this;
            }

            public Builder clearProduct() {
                this.product_ = Configuration.getDefaultInstance().getProduct();
                this.bitField0_ &= -33554433;
                onChanged();
                return this;
            }

            public Builder clearScreenHeight() {
                this.bitField0_ &= -33;
                this.screenHeight_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenHeightDp() {
                this.bitField0_ &= -129;
                this.screenHeightDp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenLayoutLong() {
                this.bitField0_ &= Half.LOWEST_VALUE;
                this.screenLayoutLong_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenLayoutSize() {
                this.bitField0_ &= -513;
                this.screenLayoutSize_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenRound() {
                this.bitField0_ &= -2049;
                this.screenRound_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenWidth() {
                this.bitField0_ &= -17;
                this.screenWidth_ = 0;
                onChanged();
                return this;
            }

            public Builder clearScreenWidthDp() {
                this.bitField0_ &= -65;
                this.screenWidthDp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSdkVersion() {
                this.bitField0_ &= -8388609;
                this.sdkVersion_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSmallestScreenWidthDp() {
                this.bitField0_ &= -257;
                this.smallestScreenWidthDp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTouchscreen() {
                this.bitField0_ &= -262145;
                this.touchscreen_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUiModeNight() {
                this.bitField0_ &= -65537;
                this.uiModeNight_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUiModeType() {
                this.bitField0_ &= -32769;
                this.uiModeType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearWideColorGamut() {
                this.bitField0_ &= -4097;
                this.wideColorGamut_ = 0;
                onChanged();
                return this;
            }

            @Override
            public int getDensity() {
                return this.density_;
            }

            @Override
            public Descriptors.b getDescriptorForType() {
                return ConfigurationOuterClass.internal_static_aapt_pb_Configuration_descriptor;
            }

            @Override
            public GrammaticalGender getGrammaticalGender() {
                GrammaticalGender forNumber = GrammaticalGender.forNumber(this.grammaticalGender_);
                return forNumber == null ? GrammaticalGender.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getGrammaticalGenderValue() {
                return this.grammaticalGender_;
            }

            @Override
            public Hdr getHdr() {
                Hdr forNumber = Hdr.forNumber(this.hdr_);
                return forNumber == null ? Hdr.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getHdrValue() {
                return this.hdr_;
            }

            @Override
            public Keyboard getKeyboard() {
                Keyboard forNumber = Keyboard.forNumber(this.keyboard_);
                return forNumber == null ? Keyboard.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getKeyboardValue() {
                return this.keyboard_;
            }

            @Override
            public KeysHidden getKeysHidden() {
                KeysHidden forNumber = KeysHidden.forNumber(this.keysHidden_);
                return forNumber == null ? KeysHidden.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getKeysHiddenValue() {
                return this.keysHidden_;
            }

            @Override
            public LayoutDirection getLayoutDirection() {
                LayoutDirection forNumber = LayoutDirection.forNumber(this.layoutDirection_);
                return forNumber == null ? LayoutDirection.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getLayoutDirectionValue() {
                return this.layoutDirection_;
            }

            @Override
            public String getLocale() {
                Object obj = this.locale_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String g02 = ((AbstractC12724x) obj).g0();
                this.locale_ = g02;
                return g02;
            }

            @Override
            public AbstractC12724x getLocaleBytes() {
                Object obj = this.locale_;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.locale_ = w10;
                return w10;
            }

            @Override
            public int getMcc() {
                return this.mcc_;
            }

            @Override
            public int getMnc() {
                return this.mnc_;
            }

            @Override
            public NavHidden getNavHidden() {
                NavHidden forNumber = NavHidden.forNumber(this.navHidden_);
                return forNumber == null ? NavHidden.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getNavHiddenValue() {
                return this.navHidden_;
            }

            @Override
            public Navigation getNavigation() {
                Navigation forNumber = Navigation.forNumber(this.navigation_);
                return forNumber == null ? Navigation.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getNavigationValue() {
                return this.navigation_;
            }

            @Override
            public Orientation getOrientation() {
                Orientation forNumber = Orientation.forNumber(this.orientation_);
                return forNumber == null ? Orientation.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getOrientationValue() {
                return this.orientation_;
            }

            @Override
            public String getProduct() {
                Object obj = this.product_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String g02 = ((AbstractC12724x) obj).g0();
                this.product_ = g02;
                return g02;
            }

            @Override
            public AbstractC12724x getProductBytes() {
                Object obj = this.product_;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.product_ = w10;
                return w10;
            }

            @Override
            public int getScreenHeight() {
                return this.screenHeight_;
            }

            @Override
            public int getScreenHeightDp() {
                return this.screenHeightDp_;
            }

            @Override
            public ScreenLayoutLong getScreenLayoutLong() {
                ScreenLayoutLong forNumber = ScreenLayoutLong.forNumber(this.screenLayoutLong_);
                return forNumber == null ? ScreenLayoutLong.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getScreenLayoutLongValue() {
                return this.screenLayoutLong_;
            }

            @Override
            public ScreenLayoutSize getScreenLayoutSize() {
                ScreenLayoutSize forNumber = ScreenLayoutSize.forNumber(this.screenLayoutSize_);
                return forNumber == null ? ScreenLayoutSize.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getScreenLayoutSizeValue() {
                return this.screenLayoutSize_;
            }

            @Override
            public ScreenRound getScreenRound() {
                ScreenRound forNumber = ScreenRound.forNumber(this.screenRound_);
                return forNumber == null ? ScreenRound.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getScreenRoundValue() {
                return this.screenRound_;
            }

            @Override
            public int getScreenWidth() {
                return this.screenWidth_;
            }

            @Override
            public int getScreenWidthDp() {
                return this.screenWidthDp_;
            }

            @Override
            public int getSdkVersion() {
                return this.sdkVersion_;
            }

            @Override
            public int getSmallestScreenWidthDp() {
                return this.smallestScreenWidthDp_;
            }

            @Override
            public Touchscreen getTouchscreen() {
                Touchscreen forNumber = Touchscreen.forNumber(this.touchscreen_);
                return forNumber == null ? Touchscreen.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getTouchscreenValue() {
                return this.touchscreen_;
            }

            @Override
            public UiModeNight getUiModeNight() {
                UiModeNight forNumber = UiModeNight.forNumber(this.uiModeNight_);
                return forNumber == null ? UiModeNight.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getUiModeNightValue() {
                return this.uiModeNight_;
            }

            @Override
            public UiModeType getUiModeType() {
                UiModeType forNumber = UiModeType.forNumber(this.uiModeType_);
                return forNumber == null ? UiModeType.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getUiModeTypeValue() {
                return this.uiModeType_;
            }

            @Override
            public WideColorGamut getWideColorGamut() {
                WideColorGamut forNumber = WideColorGamut.forNumber(this.wideColorGamut_);
                return forNumber == null ? WideColorGamut.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getWideColorGamutValue() {
                return this.wideColorGamut_;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return ConfigurationOuterClass.internal_static_aapt_pb_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
            }

            @Override
            public final boolean isInitialized() {
                return true;
            }

            public Builder setDensity(int i10) {
                this.density_ = i10;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder setGrammaticalGender(GrammaticalGender grammaticalGender) {
                grammaticalGender.getClass();
                this.bitField0_ |= 16777216;
                this.grammaticalGender_ = grammaticalGender.getNumber();
                onChanged();
                return this;
            }

            public Builder setGrammaticalGenderValue(int i10) {
                this.grammaticalGender_ = i10;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder setHdr(Hdr hdr) {
                hdr.getClass();
                this.bitField0_ |= 8192;
                this.hdr_ = hdr.getNumber();
                onChanged();
                return this;
            }

            public Builder setHdrValue(int i10) {
                this.hdr_ = i10;
                this.bitField0_ |= 8192;
                onChanged();
                return this;
            }

            public Builder setKeyboard(Keyboard keyboard) {
                keyboard.getClass();
                this.bitField0_ |= 1048576;
                this.keyboard_ = keyboard.getNumber();
                onChanged();
                return this;
            }

            public Builder setKeyboardValue(int i10) {
                this.keyboard_ = i10;
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder setKeysHidden(KeysHidden keysHidden) {
                keysHidden.getClass();
                this.bitField0_ |= 524288;
                this.keysHidden_ = keysHidden.getNumber();
                onChanged();
                return this;
            }

            public Builder setKeysHiddenValue(int i10) {
                this.keysHidden_ = i10;
                this.bitField0_ |= 524288;
                onChanged();
                return this;
            }

            public Builder setLayoutDirection(LayoutDirection layoutDirection) {
                layoutDirection.getClass();
                this.bitField0_ |= 8;
                this.layoutDirection_ = layoutDirection.getNumber();
                onChanged();
                return this;
            }

            public Builder setLayoutDirectionValue(int i10) {
                this.layoutDirection_ = i10;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder setLocale(String str) {
                str.getClass();
                this.locale_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setLocaleBytes(AbstractC12724x abstractC12724x) {
                abstractC12724x.getClass();
                AbstractC12657b.checkByteStringIsUtf8(abstractC12724x);
                this.locale_ = abstractC12724x;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setMcc(int i10) {
                this.mcc_ = i10;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder setMnc(int i10) {
                this.mnc_ = i10;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setNavHidden(NavHidden navHidden) {
                navHidden.getClass();
                this.bitField0_ |= 2097152;
                this.navHidden_ = navHidden.getNumber();
                onChanged();
                return this;
            }

            public Builder setNavHiddenValue(int i10) {
                this.navHidden_ = i10;
                this.bitField0_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder setNavigation(Navigation navigation) {
                navigation.getClass();
                this.bitField0_ |= 4194304;
                this.navigation_ = navigation.getNumber();
                onChanged();
                return this;
            }

            public Builder setNavigationValue(int i10) {
                this.navigation_ = i10;
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder setOrientation(Orientation orientation) {
                orientation.getClass();
                this.bitField0_ |= 16384;
                this.orientation_ = orientation.getNumber();
                onChanged();
                return this;
            }

            public Builder setOrientationValue(int i10) {
                this.orientation_ = i10;
                this.bitField0_ |= 16384;
                onChanged();
                return this;
            }

            public Builder setProduct(String str) {
                str.getClass();
                this.product_ = str;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder setProductBytes(AbstractC12724x abstractC12724x) {
                abstractC12724x.getClass();
                AbstractC12657b.checkByteStringIsUtf8(abstractC12724x);
                this.product_ = abstractC12724x;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder setScreenHeight(int i10) {
                this.screenHeight_ = i10;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder setScreenHeightDp(int i10) {
                this.screenHeightDp_ = i10;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder setScreenLayoutLong(ScreenLayoutLong screenLayoutLong) {
                screenLayoutLong.getClass();
                this.bitField0_ |= 1024;
                this.screenLayoutLong_ = screenLayoutLong.getNumber();
                onChanged();
                return this;
            }

            public Builder setScreenLayoutLongValue(int i10) {
                this.screenLayoutLong_ = i10;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder setScreenLayoutSize(ScreenLayoutSize screenLayoutSize) {
                screenLayoutSize.getClass();
                this.bitField0_ |= 512;
                this.screenLayoutSize_ = screenLayoutSize.getNumber();
                onChanged();
                return this;
            }

            public Builder setScreenLayoutSizeValue(int i10) {
                this.screenLayoutSize_ = i10;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder setScreenRound(ScreenRound screenRound) {
                screenRound.getClass();
                this.bitField0_ |= 2048;
                this.screenRound_ = screenRound.getNumber();
                onChanged();
                return this;
            }

            public Builder setScreenRoundValue(int i10) {
                this.screenRound_ = i10;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder setScreenWidth(int i10) {
                this.screenWidth_ = i10;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder setScreenWidthDp(int i10) {
                this.screenWidthDp_ = i10;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder setSdkVersion(int i10) {
                this.sdkVersion_ = i10;
                this.bitField0_ |= 8388608;
                onChanged();
                return this;
            }

            public Builder setSmallestScreenWidthDp(int i10) {
                this.smallestScreenWidthDp_ = i10;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder setTouchscreen(Touchscreen touchscreen) {
                touchscreen.getClass();
                this.bitField0_ |= 262144;
                this.touchscreen_ = touchscreen.getNumber();
                onChanged();
                return this;
            }

            public Builder setTouchscreenValue(int i10) {
                this.touchscreen_ = i10;
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder setUiModeNight(UiModeNight uiModeNight) {
                uiModeNight.getClass();
                this.bitField0_ |= 65536;
                this.uiModeNight_ = uiModeNight.getNumber();
                onChanged();
                return this;
            }

            public Builder setUiModeNightValue(int i10) {
                this.uiModeNight_ = i10;
                this.bitField0_ |= 65536;
                onChanged();
                return this;
            }

            public Builder setUiModeType(UiModeType uiModeType) {
                uiModeType.getClass();
                this.bitField0_ |= 32768;
                this.uiModeType_ = uiModeType.getNumber();
                onChanged();
                return this;
            }

            public Builder setUiModeTypeValue(int i10) {
                this.uiModeType_ = i10;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder setWideColorGamut(WideColorGamut wideColorGamut) {
                wideColorGamut.getClass();
                this.bitField0_ |= 4096;
                this.wideColorGamut_ = wideColorGamut.getNumber();
                onChanged();
                return this;
            }

            public Builder setWideColorGamutValue(int i10) {
                this.wideColorGamut_ = i10;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            private Builder() {
                this.locale_ = "";
                this.layoutDirection_ = 0;
                this.screenLayoutSize_ = 0;
                this.screenLayoutLong_ = 0;
                this.screenRound_ = 0;
                this.wideColorGamut_ = 0;
                this.hdr_ = 0;
                this.orientation_ = 0;
                this.uiModeType_ = 0;
                this.uiModeNight_ = 0;
                this.touchscreen_ = 0;
                this.keysHidden_ = 0;
                this.keyboard_ = 0;
                this.navHidden_ = 0;
                this.navigation_ = 0;
                this.grammaticalGender_ = 0;
                this.product_ = "";
            }

            @Override
            public Configuration build() {
                Configuration buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((com.google.protobuf.Y0) buildPartial);
            }

            @Override
            public Configuration buildPartial() {
                Configuration configuration = new Configuration(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(configuration);
                }
                onBuilt();
                return configuration;
            }

            @Override
            public Configuration getDefaultInstanceForType() {
                return Configuration.getDefaultInstance();
            }

            @Override
            public final Builder setUnknownFields(r2 r2Var) {
                return (Builder) super.setUnknownFields(r2Var);
            }

            @Override
            public final Builder mergeUnknownFields(r2 r2Var) {
                return (Builder) super.mergeUnknownFields(r2Var);
            }

            @Override
            public Builder s6() {
                super.s6();
                this.bitField0_ = 0;
                this.mcc_ = 0;
                this.mnc_ = 0;
                this.locale_ = "";
                this.layoutDirection_ = 0;
                this.screenWidth_ = 0;
                this.screenHeight_ = 0;
                this.screenWidthDp_ = 0;
                this.screenHeightDp_ = 0;
                this.smallestScreenWidthDp_ = 0;
                this.screenLayoutSize_ = 0;
                this.screenLayoutLong_ = 0;
                this.screenRound_ = 0;
                this.wideColorGamut_ = 0;
                this.hdr_ = 0;
                this.orientation_ = 0;
                this.uiModeType_ = 0;
                this.uiModeNight_ = 0;
                this.density_ = 0;
                this.touchscreen_ = 0;
                this.keysHidden_ = 0;
                this.keyboard_ = 0;
                this.navHidden_ = 0;
                this.navigation_ = 0;
                this.sdkVersion_ = 0;
                this.grammaticalGender_ = 0;
                this.product_ = "";
                return this;
            }

            @Override
            public Builder mergeFrom(com.google.protobuf.Y0 y02) {
                if (y02 instanceof Configuration) {
                    return mergeFrom((Configuration) y02);
                }
                super.mergeFrom(y02);
                return this;
            }

            public Builder mergeFrom(Configuration configuration) {
                if (configuration == Configuration.getDefaultInstance()) {
                    return this;
                }
                if (configuration.getMcc() != 0) {
                    setMcc(configuration.getMcc());
                }
                if (configuration.getMnc() != 0) {
                    setMnc(configuration.getMnc());
                }
                if (!configuration.getLocale().isEmpty()) {
                    this.locale_ = configuration.locale_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (configuration.layoutDirection_ != 0) {
                    setLayoutDirectionValue(configuration.getLayoutDirectionValue());
                }
                if (configuration.getScreenWidth() != 0) {
                    setScreenWidth(configuration.getScreenWidth());
                }
                if (configuration.getScreenHeight() != 0) {
                    setScreenHeight(configuration.getScreenHeight());
                }
                if (configuration.getScreenWidthDp() != 0) {
                    setScreenWidthDp(configuration.getScreenWidthDp());
                }
                if (configuration.getScreenHeightDp() != 0) {
                    setScreenHeightDp(configuration.getScreenHeightDp());
                }
                if (configuration.getSmallestScreenWidthDp() != 0) {
                    setSmallestScreenWidthDp(configuration.getSmallestScreenWidthDp());
                }
                if (configuration.screenLayoutSize_ != 0) {
                    setScreenLayoutSizeValue(configuration.getScreenLayoutSizeValue());
                }
                if (configuration.screenLayoutLong_ != 0) {
                    setScreenLayoutLongValue(configuration.getScreenLayoutLongValue());
                }
                if (configuration.screenRound_ != 0) {
                    setScreenRoundValue(configuration.getScreenRoundValue());
                }
                if (configuration.wideColorGamut_ != 0) {
                    setWideColorGamutValue(configuration.getWideColorGamutValue());
                }
                if (configuration.hdr_ != 0) {
                    setHdrValue(configuration.getHdrValue());
                }
                if (configuration.orientation_ != 0) {
                    setOrientationValue(configuration.getOrientationValue());
                }
                if (configuration.uiModeType_ != 0) {
                    setUiModeTypeValue(configuration.getUiModeTypeValue());
                }
                if (configuration.uiModeNight_ != 0) {
                    setUiModeNightValue(configuration.getUiModeNightValue());
                }
                if (configuration.getDensity() != 0) {
                    setDensity(configuration.getDensity());
                }
                if (configuration.touchscreen_ != 0) {
                    setTouchscreenValue(configuration.getTouchscreenValue());
                }
                if (configuration.keysHidden_ != 0) {
                    setKeysHiddenValue(configuration.getKeysHiddenValue());
                }
                if (configuration.keyboard_ != 0) {
                    setKeyboardValue(configuration.getKeyboardValue());
                }
                if (configuration.navHidden_ != 0) {
                    setNavHiddenValue(configuration.getNavHiddenValue());
                }
                if (configuration.navigation_ != 0) {
                    setNavigationValue(configuration.getNavigationValue());
                }
                if (configuration.getSdkVersion() != 0) {
                    setSdkVersion(configuration.getSdkVersion());
                }
                if (configuration.grammaticalGender_ != 0) {
                    setGrammaticalGenderValue(configuration.getGrammaticalGenderValue());
                }
                if (!configuration.getProduct().isEmpty()) {
                    this.product_ = configuration.product_;
                    this.bitField0_ |= 33554432;
                    onChanged();
                }
                mergeUnknownFields(configuration.getUnknownFields());
                onChanged();
                return this;
            }

            private Builder(AbstractC12722w0.c cVar) {
                super(cVar);
                this.locale_ = "";
                this.layoutDirection_ = 0;
                this.screenLayoutSize_ = 0;
                this.screenLayoutLong_ = 0;
                this.screenRound_ = 0;
                this.wideColorGamut_ = 0;
                this.hdr_ = 0;
                this.orientation_ = 0;
                this.uiModeType_ = 0;
                this.uiModeNight_ = 0;
                this.touchscreen_ = 0;
                this.keysHidden_ = 0;
                this.keyboard_ = 0;
                this.navHidden_ = 0;
                this.navigation_ = 0;
                this.grammaticalGender_ = 0;
                this.product_ = "";
            }

            /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000b. Please report as an issue. */
            @Override
            public Builder mergeFrom(com.google.protobuf.C c10, C12666d0 c12666d0) throws IOException {
                c12666d0.getClass();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int Z10 = c10.Z();
                            switch (Z10) {
                                case 0:
                                    z10 = true;
                                case 8:
                                    this.mcc_ = c10.a0();
                                    this.bitField0_ |= 1;
                                case 16:
                                    this.mnc_ = c10.a0();
                                    this.bitField0_ |= 2;
                                case 26:
                                    this.locale_ = c10.Y();
                                    this.bitField0_ |= 4;
                                case 32:
                                    this.layoutDirection_ = c10.A();
                                    this.bitField0_ |= 8;
                                case 40:
                                    this.screenWidth_ = c10.a0();
                                    this.bitField0_ |= 16;
                                case 48:
                                    this.screenHeight_ = c10.a0();
                                    this.bitField0_ |= 32;
                                case 56:
                                    this.screenWidthDp_ = c10.a0();
                                    this.bitField0_ |= 64;
                                case 64:
                                    this.screenHeightDp_ = c10.a0();
                                    this.bitField0_ |= 128;
                                case 72:
                                    this.smallestScreenWidthDp_ = c10.a0();
                                    this.bitField0_ |= 256;
                                case 80:
                                    this.screenLayoutSize_ = c10.A();
                                    this.bitField0_ |= 512;
                                case 88:
                                    this.screenLayoutLong_ = c10.A();
                                    this.bitField0_ |= 1024;
                                case 96:
                                    this.screenRound_ = c10.A();
                                    this.bitField0_ |= 2048;
                                case 104:
                                    this.wideColorGamut_ = c10.A();
                                    this.bitField0_ |= 4096;
                                case 112:
                                    this.hdr_ = c10.A();
                                    this.bitField0_ |= 8192;
                                case 120:
                                    this.orientation_ = c10.A();
                                    this.bitField0_ |= 16384;
                                case 128:
                                    this.uiModeType_ = c10.A();
                                    this.bitField0_ |= 32768;
                                case 136:
                                    this.uiModeNight_ = c10.A();
                                    this.bitField0_ |= 65536;
                                case 144:
                                    this.density_ = c10.a0();
                                    this.bitField0_ |= 131072;
                                case 152:
                                    this.touchscreen_ = c10.A();
                                    this.bitField0_ |= 262144;
                                case 160:
                                    this.keysHidden_ = c10.A();
                                    this.bitField0_ |= 524288;
                                case 168:
                                    this.keyboard_ = c10.A();
                                    this.bitField0_ |= 1048576;
                                case 176:
                                    this.navHidden_ = c10.A();
                                    this.bitField0_ |= 2097152;
                                case 184:
                                    this.navigation_ = c10.A();
                                    this.bitField0_ |= 4194304;
                                case 192:
                                    this.sdkVersion_ = c10.a0();
                                    this.bitField0_ |= 8388608;
                                case 202:
                                    this.product_ = c10.Y();
                                    this.bitField0_ |= 33554432;
                                case 208:
                                    this.grammaticalGender_ = c10.A();
                                    this.bitField0_ |= 16777216;
                                default:
                                    if (!super.parseUnknownField(c10, c12666d0, Z10)) {
                                        z10 = true;
                                    }
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.unwrapIOException();
                        }
                    } catch (Throwable th2) {
                        onChanged();
                        throw th2;
                    }
                }
                onChanged();
                return this;
            }
        }

        private Configuration(AbstractC12722w0.b<?> bVar) {
            super(bVar);
            this.mcc_ = 0;
            this.mnc_ = 0;
            this.locale_ = "";
            this.layoutDirection_ = 0;
            this.screenWidth_ = 0;
            this.screenHeight_ = 0;
            this.screenWidthDp_ = 0;
            this.screenHeightDp_ = 0;
            this.smallestScreenWidthDp_ = 0;
            this.screenLayoutSize_ = 0;
            this.screenLayoutLong_ = 0;
            this.screenRound_ = 0;
            this.wideColorGamut_ = 0;
            this.hdr_ = 0;
            this.orientation_ = 0;
            this.uiModeType_ = 0;
            this.uiModeNight_ = 0;
            this.density_ = 0;
            this.touchscreen_ = 0;
            this.keysHidden_ = 0;
            this.keyboard_ = 0;
            this.navHidden_ = 0;
            this.navigation_ = 0;
            this.sdkVersion_ = 0;
            this.grammaticalGender_ = 0;
            this.product_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Builder newBuilder(Configuration configuration) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(configuration);
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, c12666d0);
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream, C12666d0 c12666d0) throws IOException {
            return (Configuration) AbstractC12722w0.parseDelimitedWithIOException(PARSER, inputStream, c12666d0);
        }

        public static Configuration parseFrom(AbstractC12724x abstractC12724x) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(abstractC12724x);
        }

        @Override
        public Configuration getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Configuration parseFrom(AbstractC12724x abstractC12724x, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(abstractC12724x, c12666d0);
        }

        @Override
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Configuration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override
        public Builder newBuilderForType(AbstractC12722w0.c cVar) {
            return new Builder(cVar);
        }

        public static Configuration parseFrom(byte[] bArr, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, c12666d0);
        }

        public static Configuration parseFrom(InputStream inputStream) throws IOException {
            return (Configuration) AbstractC12722w0.parseWithIOException(PARSER, inputStream);
        }

        public static Configuration parseFrom(InputStream inputStream, C12666d0 c12666d0) throws IOException {
            return (Configuration) AbstractC12722w0.parseWithIOException(PARSER, inputStream, c12666d0);
        }

        public static Configuration parseFrom(com.google.protobuf.C c10) throws IOException {
            return (Configuration) AbstractC12722w0.parseWithIOException(PARSER, c10);
        }

        public static Configuration parseFrom(com.google.protobuf.C c10, C12666d0 c12666d0) throws IOException {
            return (Configuration) AbstractC12722w0.parseWithIOException(PARSER, c10, c12666d0);
        }

        private Configuration() {
            this.mcc_ = 0;
            this.mnc_ = 0;
            this.locale_ = "";
            this.layoutDirection_ = 0;
            this.screenWidth_ = 0;
            this.screenHeight_ = 0;
            this.screenWidthDp_ = 0;
            this.screenHeightDp_ = 0;
            this.smallestScreenWidthDp_ = 0;
            this.screenLayoutSize_ = 0;
            this.screenLayoutLong_ = 0;
            this.screenRound_ = 0;
            this.wideColorGamut_ = 0;
            this.hdr_ = 0;
            this.orientation_ = 0;
            this.uiModeType_ = 0;
            this.uiModeNight_ = 0;
            this.density_ = 0;
            this.touchscreen_ = 0;
            this.keysHidden_ = 0;
            this.keyboard_ = 0;
            this.navHidden_ = 0;
            this.navigation_ = 0;
            this.sdkVersion_ = 0;
            this.grammaticalGender_ = 0;
            this.product_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.locale_ = "";
            this.layoutDirection_ = 0;
            this.screenLayoutSize_ = 0;
            this.screenLayoutLong_ = 0;
            this.screenRound_ = 0;
            this.wideColorGamut_ = 0;
            this.hdr_ = 0;
            this.orientation_ = 0;
            this.uiModeType_ = 0;
            this.uiModeNight_ = 0;
            this.touchscreen_ = 0;
            this.keysHidden_ = 0;
            this.keyboard_ = 0;
            this.navHidden_ = 0;
            this.navigation_ = 0;
            this.grammaticalGender_ = 0;
            this.product_ = "";
        }
    }

    public interface ConfigurationOrBuilder extends InterfaceC12670e1 {
        int getDensity();

        Configuration.GrammaticalGender getGrammaticalGender();

        int getGrammaticalGenderValue();

        Configuration.Hdr getHdr();

        int getHdrValue();

        Configuration.Keyboard getKeyboard();

        int getKeyboardValue();

        Configuration.KeysHidden getKeysHidden();

        int getKeysHiddenValue();

        Configuration.LayoutDirection getLayoutDirection();

        int getLayoutDirectionValue();

        String getLocale();

        AbstractC12724x getLocaleBytes();

        int getMcc();

        int getMnc();

        Configuration.NavHidden getNavHidden();

        int getNavHiddenValue();

        Configuration.Navigation getNavigation();

        int getNavigationValue();

        Configuration.Orientation getOrientation();

        int getOrientationValue();

        String getProduct();

        AbstractC12724x getProductBytes();

        int getScreenHeight();

        int getScreenHeightDp();

        Configuration.ScreenLayoutLong getScreenLayoutLong();

        int getScreenLayoutLongValue();

        Configuration.ScreenLayoutSize getScreenLayoutSize();

        int getScreenLayoutSizeValue();

        Configuration.ScreenRound getScreenRound();

        int getScreenRoundValue();

        int getScreenWidth();

        int getScreenWidthDp();

        int getSdkVersion();

        int getSmallestScreenWidthDp();

        Configuration.Touchscreen getTouchscreen();

        int getTouchscreenValue();

        Configuration.UiModeNight getUiModeNight();

        int getUiModeNightValue();

        Configuration.UiModeType getUiModeType();

        int getUiModeTypeValue();

        Configuration.WideColorGamut getWideColorGamut();

        int getWideColorGamutValue();
    }

    static {
        Descriptors.b bVar = getDescriptor().u().get(0);
        internal_static_aapt_pb_Configuration_descriptor = bVar;
        internal_static_aapt_pb_Configuration_fieldAccessorTable = new AbstractC12722w0.h(bVar, new String[]{"Mcc", "Mnc", "Locale", "LayoutDirection", "ScreenWidth", "ScreenHeight", "ScreenWidthDp", "ScreenHeightDp", "SmallestScreenWidthDp", "ScreenLayoutSize", "ScreenLayoutLong", "ScreenRound", "WideColorGamut", "Hdr", "Orientation", "UiModeType", "UiModeNight", "Density", "Touchscreen", "KeysHidden", "Keyboard", "NavHidden", "Navigation", "SdkVersion", "GrammaticalGender", "Product"});
    }

    private ConfigurationOuterClass() {
    }

    public static Descriptors.g getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(C12666d0 c12666d0) {
    }

    public static void registerAllExtensions(C12658b0 c12658b0) {
        registerAllExtensions((C12666d0) c12658b0);
    }
}
