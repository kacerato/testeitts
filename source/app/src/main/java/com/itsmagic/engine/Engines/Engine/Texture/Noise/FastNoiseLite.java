package com.itsmagic.engine.Engines.Engine.Texture.Noise;

import Ic.InterfaceC2637p;
import Ic.InterfaceC2638q;
import Ic.r;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.Expose;

@r
@InterfaceC2638q
@InterfaceC2637p
public class FastNoiseLite {
    private static final int PrimeX = 501125321;
    private static final int PrimeY = 1136930381;
    private static final int PrimeZ = 1720413743;

    @Expose
    private CellularDistanceFunction mCellularDistanceFunction;

    @Expose
    private float mCellularJitterModifier;

    @Expose
    private CellularReturnType mCellularReturnType;

    @Expose
    private float mDomainWarpAmp;

    @Expose
    private DomainWarpType mDomainWarpType;

    @Expose
    private float mFractalBounding;

    @Expose
    private FractalType mFractalType;

    @Expose
    private float mGain;

    @Expose
    private float mLacunarity;

    @Expose
    private int mOctaves;

    @Expose
    private float mPingPongStrength;

    @Expose
    private TransformType3D mTransformType3D;

    @Expose
    private TransformType3D mWarpTransformType3D;

    @Expose
    private float mWeightedStrength;
    private static final float[] Gradients2D = {0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.6087614f, 0.7933533f, 0.7933533f, 0.6087614f, 0.9238795f, 0.38268343f, 0.9914449f, 0.13052619f, 0.9914449f, -0.13052619f, 0.9238795f, -0.38268343f, 0.7933533f, -0.6087614f, 0.6087614f, -0.7933533f, 0.38268343f, -0.9238795f, 0.13052619f, -0.9914449f, -0.13052619f, -0.9914449f, -0.38268343f, -0.9238795f, -0.6087614f, -0.7933533f, -0.7933533f, -0.6087614f, -0.9238795f, -0.38268343f, -0.9914449f, -0.13052619f, -0.9914449f, 0.13052619f, -0.9238795f, 0.38268343f, -0.7933533f, 0.6087614f, -0.6087614f, 0.7933533f, -0.38268343f, 0.9238795f, -0.13052619f, 0.9914449f, 0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.6087614f, 0.7933533f, 0.7933533f, 0.6087614f, 0.9238795f, 0.38268343f, 0.9914449f, 0.13052619f, 0.9914449f, -0.13052619f, 0.9238795f, -0.38268343f, 0.7933533f, -0.6087614f, 0.6087614f, -0.7933533f, 0.38268343f, -0.9238795f, 0.13052619f, -0.9914449f, -0.13052619f, -0.9914449f, -0.38268343f, -0.9238795f, -0.6087614f, -0.7933533f, -0.7933533f, -0.6087614f, -0.9238795f, -0.38268343f, -0.9914449f, -0.13052619f, -0.9914449f, 0.13052619f, -0.9238795f, 0.38268343f, -0.7933533f, 0.6087614f, -0.6087614f, 0.7933533f, -0.38268343f, 0.9238795f, -0.13052619f, 0.9914449f, 0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.6087614f, 0.7933533f, 0.7933533f, 0.6087614f, 0.9238795f, 0.38268343f, 0.9914449f, 0.13052619f, 0.9914449f, -0.13052619f, 0.9238795f, -0.38268343f, 0.7933533f, -0.6087614f, 0.6087614f, -0.7933533f, 0.38268343f, -0.9238795f, 0.13052619f, -0.9914449f, -0.13052619f, -0.9914449f, -0.38268343f, -0.9238795f, -0.6087614f, -0.7933533f, -0.7933533f, -0.6087614f, -0.9238795f, -0.38268343f, -0.9914449f, -0.13052619f, -0.9914449f, 0.13052619f, -0.9238795f, 0.38268343f, -0.7933533f, 0.6087614f, -0.6087614f, 0.7933533f, -0.38268343f, 0.9238795f, -0.13052619f, 0.9914449f, 0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.6087614f, 0.7933533f, 0.7933533f, 0.6087614f, 0.9238795f, 0.38268343f, 0.9914449f, 0.13052619f, 0.9914449f, -0.13052619f, 0.9238795f, -0.38268343f, 0.7933533f, -0.6087614f, 0.6087614f, -0.7933533f, 0.38268343f, -0.9238795f, 0.13052619f, -0.9914449f, -0.13052619f, -0.9914449f, -0.38268343f, -0.9238795f, -0.6087614f, -0.7933533f, -0.7933533f, -0.6087614f, -0.9238795f, -0.38268343f, -0.9914449f, -0.13052619f, -0.9914449f, 0.13052619f, -0.9238795f, 0.38268343f, -0.7933533f, 0.6087614f, -0.6087614f, 0.7933533f, -0.38268343f, 0.9238795f, -0.13052619f, 0.9914449f, 0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.6087614f, 0.7933533f, 0.7933533f, 0.6087614f, 0.9238795f, 0.38268343f, 0.9914449f, 0.13052619f, 0.9914449f, -0.13052619f, 0.9238795f, -0.38268343f, 0.7933533f, -0.6087614f, 0.6087614f, -0.7933533f, 0.38268343f, -0.9238795f, 0.13052619f, -0.9914449f, -0.13052619f, -0.9914449f, -0.38268343f, -0.9238795f, -0.6087614f, -0.7933533f, -0.7933533f, -0.6087614f, -0.9238795f, -0.38268343f, -0.9914449f, -0.13052619f, -0.9914449f, 0.13052619f, -0.9238795f, 0.38268343f, -0.7933533f, 0.6087614f, -0.6087614f, 0.7933533f, -0.38268343f, 0.9238795f, -0.13052619f, 0.9914449f, 0.38268343f, 0.9238795f, 0.9238795f, 0.38268343f, 0.9238795f, -0.38268343f, 0.38268343f, -0.9238795f, -0.38268343f, -0.9238795f, -0.9238795f, -0.38268343f, -0.9238795f, 0.38268343f, -0.38268343f, 0.9238795f};
    private static final float[] RandVecs2D = {-0.2700222f, -0.9628541f, 0.38630927f, -0.9223693f, 0.04444859f, -0.9990117f, -0.59925234f, -0.80056024f, -0.781928f, 0.62336874f, 0.9464672f, 0.32279992f, -0.6514147f, -0.7587219f, 0.93784726f, 0.34704837f, -0.8497876f, -0.52712524f, -0.87904257f, 0.47674325f, -0.8923003f, -0.45144236f, -0.37984443f, -0.9250504f, -0.9951651f, 0.09821638f, 0.7724398f, -0.635088f, 0.75732833f, -0.6530343f, -0.9928005f, -0.119780056f, -0.05326657f, 0.99858034f, 0.97542536f, -0.22033007f, -0.76650184f, 0.64224213f, 0.9916367f, 0.12906061f, -0.99469686f, 0.10285038f, -0.53792053f, -0.8429955f, 0.50228155f, -0.86470413f, 0.45598215f, -0.8899889f, -0.8659131f, -0.50019443f, 0.08794584f, -0.9961253f, -0.5051685f, 0.8630207f, 0.7753185f, -0.6315704f, -0.69219446f, 0.72171104f, -0.51916593f, -0.85467345f, 0.8978623f, -0.4402764f, -0.17067741f, 0.98532695f, -0.935343f, -0.35374206f, -0.99924046f, 0.038967468f, -0.2882064f, -0.9575683f, -0.96638113f, 0.2571138f, -0.87597144f, -0.48236302f, -0.8303123f, -0.55729836f, 0.051101338f, -0.99869347f, -0.85583735f, -0.51724505f, 0.098870255f, 0.9951003f, 0.9189016f, 0.39448678f, -0.24393758f, -0.96979094f, -0.81214094f, -0.5834613f, -0.99104315f, 0.13354214f, 0.8492424f, -0.52800316f, -0.9717839f, -0.23587295f, 0.9949457f, 0.10041421f, 0.6241065f, -0.7813392f, 0.6629103f, 0.74869883f, -0.7197418f, 0.6942418f, -0.8143371f, -0.58039224f, 0.10452105f, -0.9945227f, -0.10659261f, -0.99430275f, 0.44579968f, -0.8951328f, 0.105547406f, 0.99441427f, -0.9927903f, 0.11986445f, -0.83343667f, 0.55261505f, 0.9115562f, -0.4111756f, 0.8285545f, -0.55990845f, 0.7217098f, -0.6921958f, 0.49404928f, -0.8694339f, -0.36523214f, -0.9309165f, -0.9696607f, 0.24445485f, 0.089255095f, -0.9960088f, 0.5354071f, -0.8445941f, -0.10535762f, 0.9944344f, -0.98902845f, 0.1477251f, 0.004856105f, 0.9999882f, 0.98855984f, 0.15082914f, 0.92861295f, -0.37104982f, -0.5832394f, -0.8123003f, 0.30152076f, 0.9534596f, -0.95751107f, 0.28839657f, 0.9715802f, -0.23671055f, 0.2299818f, 0.97319496f, 0.9557638f, -0.2941352f, 0.7409561f, 0.67155343f, -0.9971514f, -0.07542631f, 0.69057107f, -0.7232645f, -0.2907137f, -0.9568101f, 0.5912778f, -0.80646795f, -0.94545925f, -0.3257405f, 0.66644555f, 0.7455537f, 0.6236135f, 0.78173286f, 0.9126994f, -0.40863165f, -0.8191762f, 0.57354194f, -0.8812746f, -0.4726046f, 0.99533135f, 0.09651673f, 0.98556507f, -0.16929697f, -0.8495981f, 0.52743065f, 0.6174854f, -0.78658235f, 0.85081565f, 0.5254643f, 0.99850327f, -0.0546925f, 0.19713716f, -0.98037595f, 0.66078556f, -0.7505747f, -0.030974941f, 0.9995202f, -0.6731661f, 0.73949134f, -0.71950185f, -0.69449055f, 0.97275114f, 0.2318516f, 0.9997059f, -0.02425069f, 0.44217876f, -0.89692694f, 0.9981351f, -0.061043672f, -0.9173661f, -0.39804456f, -0.81500566f, -0.579453f, -0.87893313f, 0.476945f, 0.015860584f, 0.99987423f, -0.8095465f, 0.5870558f, -0.9165899f, -0.39982867f, -0.8023543f, 0.5968481f, -0.5176738f, 0.85557806f, -0.8154407f, -0.57884055f, 0.40220103f, -0.91555136f, -0.9052557f, -0.4248672f, 0.7317446f, 0.681579f, -0.56476325f, -0.825253f, -0.8403276f, -0.54207885f, -0.93142813f, 0.36392525f, 0.52381986f, 0.85182905f, 0.7432804f, -0.66898f, -0.9853716f, -0.17041974f, 0.46014687f, 0.88784283f, 0.8258554f, 0.56388193f, 0.6182366f, 0.785992f, 0.83315027f, -0.55304664f, 0.15003075f, 0.9886813f, -0.6623304f, -0.7492119f, -0.66859865f, 0.74362344f, 0.7025606f, 0.7116239f, -0.54193896f, -0.84041786f, -0.33886164f, 0.9408362f, 0.833153f, 0.55304253f, -0.29897207f, -0.95426184f, 0.2638523f, 0.9645631f, 0.12410874f, -0.9922686f, -0.7282649f, -0.6852957f, 0.69625f, 0.71779937f, -0.91835356f, 0.395761f, -0.6326102f, -0.7744703f, -0.9331892f, -0.35938552f, -0.11537793f, -0.99332166f, 0.9514975f, -0.30765656f, -0.08987977f, -0.9959526f, 0.6678497f, 0.7442962f, 0.79524004f, -0.6062947f, -0.6462007f, -0.7631675f, -0.27335986f, 0.96191186f, 0.966959f, -0.25493184f, -0.9792895f, 0.20246519f, -0.5369503f, -0.84361386f, -0.27003646f, -0.9628501f, -0.6400277f, 0.76835185f, -0.78545374f, -0.6189204f, 0.060059056f, -0.9981948f, -0.024557704f, 0.9996984f, -0.65983623f, 0.7514095f, -0.62538946f, -0.7803128f, -0.6210409f, -0.7837782f, 0.8348889f, 0.55041856f, -0.15922752f, 0.9872419f, 0.83676225f, 0.54756635f, -0.8675754f, -0.4973057f, -0.20226626f, -0.97933054f, 0.939919f, 0.34139755f, 0.98774046f, -0.1561049f, -0.90344554f, 0.42870283f, 0.12698042f, -0.9919052f, -0.3819601f, 0.92417884f, 0.9754626f, 0.22016525f, -0.32040158f, -0.94728184f, -0.9874761f, 0.15776874f, 0.025353484f, -0.99967855f, 0.4835131f, -0.8753371f, -0.28508f, -0.9585037f, -0.06805516f, -0.99768156f, -0.7885244f, -0.61500347f, 0.3185392f, -0.9479097f, 0.8880043f, 0.45983514f, 0.64769214f, -0.76190215f, 0.98202413f, 0.18875542f, 0.93572754f, -0.35272372f, -0.88948953f, 0.45695552f, 0.7922791f, 0.6101588f, 0.74838185f, 0.66326815f, -0.728893f, -0.68462765f, 0.8729033f, -0.48789328f, 0.8288346f, 0.5594937f, 0.08074567f, 0.99673474f, 0.97991484f, -0.1994165f, -0.5807307f, -0.81409574f, -0.47000498f, -0.8826638f, 0.2409493f, 0.9705377f, 0.9437817f, -0.33056942f, -0.89279985f, -0.45045355f, -0.80696225f, 0.59060305f, 0.062589735f, 0.99803936f, -0.93125975f, 0.36435598f, 0.57774496f, 0.81621736f, -0.3360096f, -0.9418586f, 0.69793206f, -0.71616393f, -0.0020081573f, -0.999998f, -0.18272944f, -0.98316324f, -0.6523912f, 0.7578824f, -0.43026268f, -0.9027037f, -0.9985126f, -0.054520912f, -0.010281022f, -0.99994713f, -0.49460712f, 0.86911666f, -0.299935f, 0.95395964f, 0.8165472f, 0.5772787f, 0.26974604f, 0.9629315f, -0.7306287f, -0.68277496f, -0.7590952f, -0.65097964f, -0.9070538f, 0.4210146f, -0.5104861f, -0.859886f, 0.86133504f, 0.5080373f, 0.50078815f, -0.8655699f, -0.6541582f, 0.7563578f, -0.83827555f, -0.54524684f, 0.6940071f, 0.7199682f, 0.06950936f, 0.9975813f, 0.17029423f, -0.9853933f, 0.26959732f, 0.9629731f, 0.55196124f, -0.83386976f, 0.2256575f, -0.9742067f, 0.42152628f, -0.9068162f, 0.48818734f, -0.87273884f, -0.3683855f, -0.92967314f, -0.98253906f, 0.18605645f, 0.81256473f, 0.582871f, 0.3196461f, -0.947537f, 0.9570914f, 0.28978625f, -0.6876655f, -0.7260276f, -0.9988771f, -0.04737673f, -0.1250179f, 0.9921545f, -0.82801336f, 0.56070834f, 0.93248636f, -0.36120513f, 0.63946533f, 0.7688199f, -0.016238471f, -0.99986815f, -0.99550146f, -0.094746135f, -0.8145332f, 0.580117f, 0.4037328f, -0.91487694f, 0.9944263f, 0.10543368f, -0.16247116f, 0.9867133f, -0.9949488f, -0.10038388f, -0.69953024f, 0.714603f, 0.5263415f, -0.85027325f, -0.5395222f, 0.8419714f, 0.65793705f, 0.7530729f, 0.014267588f, -0.9998982f, -0.6734384f, 0.7392433f, 0.6394121f, -0.7688642f, 0.9211571f, 0.38919085f, -0.14663722f, -0.98919034f, -0.7823181f, 0.6228791f, -0.5039611f, -0.8637264f, -0.774312f, -0.632804f};
    private static final float[] Gradients3D = {0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 0.0f, -1.0f, -1.0f, 0.0f};
    private static final float[] RandVecs3D = {-0.7292737f, -0.66184396f, 0.17355819f, 0.0f, 0.7902921f, -0.5480887f, -0.2739291f, 0.0f, 0.7217579f, 0.62262124f, -0.3023381f, 0.0f, 0.5656831f, -0.8208298f, -0.079000026f, 0.0f, 0.76004905f, -0.55559796f, -0.33709997f, 0.0f, 0.37139457f, 0.50112647f, 0.78162545f, 0.0f, -0.12770624f, -0.4254439f, -0.8959289f, 0.0f, -0.2881561f, -0.5815839f, 0.7607406f, 0.0f, 0.5849561f, -0.6628202f, -0.4674352f, 0.0f, 0.33071712f, 0.039165374f, 0.94291687f, 0.0f, 0.8712122f, -0.41133744f, -0.26793817f, 0.0f, 0.580981f, 0.7021916f, 0.41156778f, 0.0f, 0.5037569f, 0.6330057f, -0.5878204f, 0.0f, 0.44937122f, 0.6013902f, 0.6606023f, 0.0f, -0.6878404f, 0.090188906f, -0.7202372f, 0.0f, -0.59589565f, -0.64693505f, 0.47579765f, 0.0f, -0.5127052f, 0.1946922f, -0.83619875f, 0.0f, -0.99115074f, -0.054102764f, -0.12121531f, 0.0f, -0.21497211f, 0.9720882f, -0.09397608f, 0.0f, -0.7518651f, -0.54280573f, 0.37424695f, 0.0f, 0.5237069f, 0.8516377f, -0.021078179f, 0.0f, 0.6333505f, 0.19261672f, -0.74951047f, 0.0f, -0.06788242f, 0.39983058f, 0.9140719f, 0.0f, -0.55386287f, -0.47298968f, -0.6852129f, 0.0f, -0.72614557f, -0.5911991f, 0.35099334f, 0.0f, -0.9229275f, -0.17828088f, 0.34120494f, 0.0f, -0.6968815f, 0.65112746f, 0.30064803f, 0.0f, 0.96080446f, -0.20983632f, -0.18117249f, 0.0f, 0.068171464f, -0.9743405f, 0.21450691f, 0.0f, -0.3577285f, -0.6697087f, -0.65078455f, 0.0f, -0.18686211f, 0.7648617f, -0.61649746f, 0.0f, -0.65416974f, 0.3967915f, 0.64390874f, 0.0f, 0.699334f, -0.6164538f, 0.36182392f, 0.0f, -0.15466657f, 0.6291284f, 0.7617583f, 0.0f, -0.6841613f, -0.2580482f, -0.68215424f, 0.0f, 0.5383981f, 0.4258655f, 0.727163f, 0.0f, -0.5026988f, -0.7939833f, -0.3418837f, 0.0f, 0.32029718f, 0.28344154f, 0.9039196f, 0.0f, 0.86832273f, -3.7626564E-4f, -0.49599952f, 0.0f, 0.79112005f, -0.085110456f, 0.60571057f, 0.0f, -0.04011016f, -0.43972486f, 0.8972364f, 0.0f, 0.914512f, 0.35793462f, -0.18854876f, 0.0f, -0.96120393f, -0.27564842f, 0.010246669f, 0.0f, 0.65103614f, -0.28777993f, -0.70237786f, 0.0f, -0.20417863f, 0.73652375f, 0.6448596f, 0.0f, -0.7718264f, 0.37906268f, 0.5104856f, 0.0f, -0.30600828f, -0.7692988f, 0.56083715f, 0.0f, 0.45400733f, -0.5024843f, 0.73578995f, 0.0f, 0.48167956f, 0.6021208f, -0.636738f, 0.0f, 0.69619805f, -0.32221973f, 0.6414692f, 0.0f, -0.65321606f, -0.6781149f, 0.33685157f, 0.0f, 0.50893015f, -0.61546624f, -0.60182345f, 0.0f, -0.16359198f, -0.9133605f, -0.37284088f, 0.0f, 0.5240802f, -0.8437664f, 0.11575059f, 0.0f, 0.5902587f, 0.4983818f, -0.63498837f, 0.0f, 0.5863228f, 0.49476475f, 0.6414308f, 0.0f, 0.6779335f, 0.23413453f, 0.6968409f, 0.0f, 0.7177054f, -0.68589795f, 0.12017863f, 0.0f, -0.532882f, -0.5205125f, 0.6671608f, 0.0f, -0.8654874f, -0.07007271f, -0.4960054f, 0.0f, -0.286181f, 0.79520893f, 0.53454953f, 0.0f, -0.048495296f, 0.98108363f, -0.18741156f, 0.0f, -0.63585216f, 0.60583484f, 0.47818002f, 0.0f, 0.62547946f, -0.28616196f, 0.72586966f, 0.0f, -0.258526f, 0.50619495f, -0.8227582f, 0.0f, 0.021363068f, 0.50640166f, -0.862033f, 0.0f, 0.20011178f, 0.85992634f, 0.46955505f, 0.0f, 0.47435614f, 0.6014985f, -0.6427953f, 0.0f, 0.6622994f, -0.52024746f, -0.539168f, 0.0f, 0.08084973f, -0.65327203f, 0.7527941f, 0.0f, -0.6893687f, 0.059286036f, 0.7219805f, 0.0f, -0.11218871f, -0.96731853f, 0.22739525f, 0.0f, 0.7344116f, 0.59796685f, -0.3210533f, 0.0f, 0.5789393f, -0.24888498f, 0.776457f, 0.0f, 0.69881827f, 0.35571697f, -0.6205791f, 0.0f, -0.86368454f, -0.27487713f, -0.4224826f, 0.0f, -0.4247028f, -0.46408808f, 0.77733505f, 0.0f, 0.5257723f, -0.84270173f, 0.11583299f, 0.0f, 0.93438303f, 0.31630248f, -0.16395439f, 0.0f, -0.10168364f, -0.8057303f, -0.58348876f, 0.0f, -0.6529239f, 0.50602126f, -0.5635893f, 0.0f, -0.24652861f, -0.9668206f, -0.06694497f, 0.0f, -0.9776897f, -0.20992506f, -0.0073688254f, 0.0f, 0.7736893f, 0.57342446f, 0.2694238f, 0.0f, -0.6095088f, 0.4995679f, 0.6155737f, 0.0f, 0.5794535f, 0.7434547f, 0.33392924f, 0.0f, -0.8226211f, 0.081425816f, 0.56272936f, 0.0f, -0.51038545f, 0.47036678f, 0.719904f, 0.0f, -0.5764972f, -0.072316565f, -0.81389266f, 0.0f, 0.7250629f, 0.39499715f, -0.56414634f, 0.0f, -0.1525424f, 0.48608407f, -0.8604958f, 0.0f, -0.55509764f, -0.49578208f, 0.6678823f, 0.0f, -0.18836144f, 0.91458696f, 0.35784173f, 0.0f, 0.76255566f, -0.54144084f, -0.35404897f, 0.0f, -0.5870232f, -0.3226498f, -0.7424964f, 0.0f, 0.30511242f, 0.2262544f, -0.9250488f, 0.0f, 0.63795763f, 0.57724243f, -0.50970703f, 0.0f, -0.5966776f, 0.14548524f, -0.7891831f, 0.0f, -0.65833056f, 0.65554875f, -0.36994147f, 0.0f, 0.74348927f, 0.23510846f, 0.6260573f, 0.0f, 0.5562114f, 0.82643604f, -0.08736329f, 0.0f, -0.302894f, -0.8251527f, 0.47684193f, 0.0f, 0.11293438f, -0.9858884f, -0.123571075f, 0.0f, 0.5937653f, -0.5896814f, 0.5474657f, 0.0f, 0.6757964f, -0.58357584f, -0.45026484f, 0.0f, 0.7242303f, -0.11527198f, 0.67985505f, 0.0f, -0.9511914f, 0.0753624f, -0.29925808f, 0.0f, 0.2539471f, -0.18863393f, 0.9486454f, 0.0f, 0.5714336f, -0.16794509f, -0.8032796f, 0.0f, -0.06778235f, 0.39782694f, 0.9149532f, 0.0f, 0.6074973f, 0.73306f, -0.30589226f, 0.0f, -0.54354787f, 0.16758224f, 0.8224791f, 0.0f, -0.5876678f, -0.3380045f, -0.7351187f, 0.0f, -0.79675627f, 0.040978227f, -0.60290986f, 0.0f, -0.19963509f, 0.8706295f, 0.4496111f, 0.0f, -0.027876602f, -0.91062325f, -0.4122962f, 0.0f, -0.7797626f, -0.6257635f, 0.019757755f, 0.0f, -0.5211233f, 0.74016446f, -0.42495546f, 0.0f, 0.8575425f, 0.4053273f, -0.31675017f, 0.0f, 0.10452233f, 0.8390196f, -0.53396744f, 0.0f, 0.3501823f, 0.9242524f, -0.15208502f, 0.0f, 0.19878499f, 0.076476134f, 0.9770547f, 0.0f, 0.78459966f, 0.6066257f, -0.12809642f, 0.0f, 0.09006737f, -0.97509897f, -0.20265691f, 0.0f, -0.82743436f, -0.54229957f, 0.14582036f, 0.0f, -0.34857976f, -0.41580227f, 0.8400004f, 0.0f, -0.2471779f, -0.730482f, -0.6366311f, 0.0f, -0.3700155f, 0.8577948f, 0.35675845f, 0.0f, 0.59133947f, -0.54831195f, -0.59133035f, 0.0f, 0.120487355f, -0.7626472f, -0.6354935f, 0.0f, 0.6169593f, 0.03079648f, 0.7863923f, 0.0f, 0.12581569f, -0.664083f, -0.73699677f, 0.0f, -0.6477565f, -0.17401473f, -0.74170774f, 0.0f, 0.6217889f, -0.7804431f, -0.06547655f, 0.0f, 0.6589943f, -0.6096988f, 0.44044736f, 0.0f, -0.26898375f, -0.6732403f, -0.68876356f, 0.0f, -0.38497752f, 0.56765425f, 0.7277094f, 0.0f, 0.57544446f, 0.81104714f, -0.10519635f, 0.0f, 0.91415936f, 0.3832948f, 0.13190056f, 0.0f, -0.10792532f, 0.9245494f, 0.36545935f, 0.0f, 0.3779771f, 0.30431488f, 0.87437165f, 0.0f, -0.21428852f, -0.8259286f, 0.5214617f, 0.0f, 0.58025444f, 0.41480985f, -0.7008834f, 0.0f, -0.19826609f, 0.85671616f, -0.47615966f, 0.0f, -0.033815537f, 0.37731808f, -0.9254661f, 0.0f, -0.68679225f, -0.6656598f, 0.29191336f, 0.0f, 0.7731743f, -0.28757936f, -0.565243f, 0.0f, -0.09655942f, 0.91937083f, -0.3813575f, 0.0f, 0.27157024f, -0.957791f, -0.09426606f, 0.0f, 0.24510157f, -0.6917999f, -0.6792188f, 0.0f, 0.97770077f, -0.17538553f, 0.115503654f, 0.0f, -0.522474f, 0.8521607f, 0.029036159f, 0.0f, -0.77348804f, -0.52612925f, 0.35341796f, 0.0f, -0.71344924f, -0.26954725f, 0.6467878f, 0.0f, 0.16440372f, 0.5105846f, -0.84396374f, 0.0f, 0.6494636f, 0.055856112f, 0.7583384f, 0.0f, -0.4711971f, 0.50172806f, -0.7254256f, 0.0f, -0.63357645f, -0.23816863f, -0.7361091f, 0.0f, -0.9021533f, -0.2709478f, -0.33571818f, 0.0f, -0.3793711f, 0.8722581f, 0.3086152f, 0.0f, -0.68555987f, -0.32501432f, 0.6514394f, 0.0f, 0.29009423f, -0.7799058f, -0.5546101f, 0.0f, -0.20983194f, 0.8503707f, 0.48253515f, 0.0f, -0.45926037f, 0.6598504f, -0.5947077f, 0.0f, 0.87159455f, 0.09616365f, -0.48070312f, 0.0f, -0.6776666f, 0.71185046f, -0.1844907f, 0.0f, 0.7044378f, 0.3124276f, 0.637304f, 0.0f, -0.7052319f, -0.24010932f, -0.6670798f, 0.0f, 0.081921004f, -0.72073364f, -0.68835455f, 0.0f, -0.6993681f, -0.5875763f, -0.4069869f, 0.0f, -0.12814544f, 0.6419896f, 0.75592864f, 0.0f, -0.6337388f, -0.67854714f, -0.3714147f, 0.0f, 0.5565052f, -0.21688876f, -0.8020357f, 0.0f, -0.57915545f, 0.7244372f, -0.3738579f, 0.0f, 0.11757791f, -0.7096451f, 0.69467926f, 0.0f, -0.613462f, 0.13236311f, 0.7785528f, 0.0f, 0.69846356f, -0.029805163f, -0.7150247f, 0.0f, 0.83180827f, -0.3930172f, 0.39195976f, 0.0f, 0.14695764f, 0.055416517f, -0.98758924f, 0.0f, 0.70886856f, -0.2690504f, 0.65201014f, 0.0f, 0.27260533f, 0.67369765f, -0.68688995f, 0.0f, -0.65912956f, 0.30354586f, -0.68804663f, 0.0f, 0.48151314f, -0.752827f, 0.4487723f, 0.0f, 0.943001f, 0.16756473f, -0.28752613f, 0.0f, 0.43480295f, 0.7695305f, -0.46772778f, 0.0f, 0.39319962f, 0.5944736f, 0.70142365f, 0.0f, 0.72543365f, -0.60392565f, 0.33018148f, 0.0f, 0.75902355f, -0.6506083f, 0.024333132f, 0.0f, -0.8552769f, -0.3430043f, 0.38839358f, 0.0f, -0.6139747f, 0.6981725f, 0.36822575f, 0.0f, -0.74659055f, -0.575201f, 0.33428493f, 0.0f, 0.5730066f, 0.8105555f, -0.12109168f, 0.0f, -0.92258775f, -0.3475211f, -0.16751404f, 0.0f, -0.71058166f, -0.47196922f, -0.5218417f, 0.0f, -0.0856461f, 0.35830015f, 0.9296697f, 0.0f, -0.8279698f, -0.2043157f, 0.5222271f, 0.0f, 0.42794403f, 0.278166f, 0.8599346f, 0.0f, 0.539908f, -0.78571206f, -0.3019204f, 0.0f, 0.5678404f, -0.5495414f, -0.61283076f, 0.0f, -0.9896071f, 0.13656391f, -0.045034185f, 0.0f, -0.6154343f, -0.64408755f, 0.45430374f, 0.0f, 0.10742044f, -0.79463404f, 0.59750944f, 0.0f, -0.359545f, -0.888553f, 0.28495783f, 0.0f, -0.21804053f, 0.1529889f, 0.9638738f, 0.0f, -0.7277432f, -0.61640507f, -0.30072346f, 0.0f, 0.7249729f, -0.0066971947f, 0.68874484f, 0.0f, -0.5553659f, -0.5336586f, 0.6377908f, 0.0f, 0.5137558f, 0.79762083f, -0.316f, 0.0f, -0.3794025f, 0.92456084f, -0.035227515f, 0.0f, 0.82292485f, 0.27453658f, -0.49741766f, 0.0f, -0.5404114f, 0.60911417f, 0.5804614f, 0.0f, 0.8036582f, -0.27030295f, 0.5301602f, 0.0f, 0.60443187f, 0.68329686f, 0.40959433f, 0.0f, 0.06389989f, 0.96582085f, -0.2512108f, 0.0f, 0.10871133f, 0.74024713f, -0.6634878f, 0.0f, -0.7134277f, -0.6926784f, 0.10591285f, 0.0f, 0.64588976f, -0.57245487f, -0.50509584f, 0.0f, -0.6553931f, 0.73814714f, 0.15999562f, 0.0f, 0.39109614f, 0.91888714f, -0.05186756f, 0.0f, -0.48790225f, -0.5904377f, 0.64291114f, 0.0f, 0.601479f, 0.77074414f, -0.21018201f, 0.0f, -0.5677173f, 0.7511361f, 0.33688518f, 0.0f, 0.7858574f, 0.22667466f, 0.5753667f, 0.0f, -0.45203456f, -0.6042227f, -0.65618575f, 0.0f, 0.0022721163f, 0.4132844f, -0.9105992f, 0.0f, -0.58157516f, -0.5162926f, 0.6286591f, 0.0f, -0.03703705f, 0.8273786f, 0.5604221f, 0.0f, -0.51196927f, 0.79535437f, -0.324498f, 0.0f, -0.26824173f, -0.957229f, -0.10843876f, 0.0f, -0.23224828f, -0.9679131f, -0.09594243f, 0.0f, 0.3554329f, -0.8881506f, 0.29130062f, 0.0f, 0.73465204f, -0.4371373f, 0.5188423f, 0.0f, 0.998512f, 0.046590112f, -0.028339446f, 0.0f, -0.37276876f, -0.9082481f, 0.19007573f, 0.0f, 0.9173738f, -0.3483642f, 0.19252984f, 0.0f, 0.2714911f, 0.41475296f, -0.86848867f, 0.0f, 0.5131763f, -0.71163344f, 0.4798207f, 0.0f, -0.87373537f, 0.18886992f, -0.44823506f, 0.0f, 0.84600437f, -0.3725218f, 0.38145f, 0.0f, 0.89787275f, -0.17802091f, -0.40265754f, 0.0f, 0.21780656f, -0.9698323f, -0.10947895f, 0.0f, -0.15180314f, -0.7788918f, -0.6085091f, 0.0f, -0.2600385f, -0.4755398f, -0.840382f, 0.0f, 0.5723135f, -0.7474341f, -0.33734185f, 0.0f, -0.7174141f, 0.16990171f, -0.67561114f, 0.0f, -0.6841808f, 0.021457076f, -0.72899675f, 0.0f, -0.2007448f, 0.06555606f, -0.9774477f, 0.0f, -0.11488037f, -0.8044887f, 0.5827524f, 0.0f, -0.787035f, 0.03447489f, 0.6159443f, 0.0f, -0.20155965f, 0.68598723f, 0.69913894f, 0.0f, 
    -0.085810825f, -0.10920836f, -0.99030805f, 0.0f, 0.5532693f, 0.73252505f, -0.39661077f, 0.0f, -0.18424894f, -0.9777375f, -0.100407675f, 0.0f, 0.07754738f, -0.9111506f, 0.40471104f, 0.0f, 0.13998385f, 0.7601631f, -0.63447344f, 0.0f, 0.44844192f, -0.84528923f, 0.29049253f, 0.0f};

    @Expose
    private int mSeed = 1337;

    @Expose
    private float mFrequency = 0.01f;

    @Expose
    private NoiseType mNoiseType = NoiseType.OpenSimplex2;

    @Expose
    private RotationType3D mRotationType3D = RotationType3D.None;

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum CellularDistanceFunction {
        Euclidean,
        EuclideanSq,
        Manhattan,
        Hybrid
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum CellularReturnType {
        CellValue,
        Distance,
        Distance2,
        Distance2Add,
        Distance2Sub,
        Distance2Mul,
        Distance2Div
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum DomainWarpType {
        OpenSimplex2,
        OpenSimplex2Reduced,
        BasicGrid
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum FractalType {
        None,
        FBm,
        Ridged,
        PingPong,
        DomainWarpProgressive,
        DomainWarpIndependent
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum NoiseType {
        OpenSimplex2,
        OpenSimplex2S,
        Cellular,
        Perlin,
        ValueCubic,
        Value
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum RotationType3D {
        None,
        ImproveXYPlanes,
        ImproveXZPlanes
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public enum TransformType3D {
        None,
        ImproveXYPlanes,
        ImproveXZPlanes,
        DefaultOpenSimplex2
    }

    public static class a {

        public float f79768a;

        public float f79769b;

        public a(float x10, float y10) {
            this.f79768a = x10;
            this.f79769b = y10;
        }
    }

    public static class b {

        public float f79770a;

        public float f79771b;

        public float f79772c;

        public b(float x10, float y10, float z10) {
            this.f79770a = x10;
            this.f79771b = y10;
            this.f79772c = z10;
        }
    }

    public FastNoiseLite() {
        TransformType3D transformType3D = TransformType3D.DefaultOpenSimplex2;
        this.mTransformType3D = transformType3D;
        this.mFractalType = FractalType.None;
        this.mOctaves = 3;
        this.mLacunarity = 2.0f;
        this.mGain = 0.5f;
        this.mWeightedStrength = 0.0f;
        this.mPingPongStrength = 2.0f;
        this.mFractalBounding = 0.5714286f;
        this.mCellularDistanceFunction = CellularDistanceFunction.EuclideanSq;
        this.mCellularReturnType = CellularReturnType.Distance;
        this.mCellularJitterModifier = 1.0f;
        this.mDomainWarpType = DomainWarpType.OpenSimplex2;
        this.mWarpTransformType3D = transformType3D;
        this.mDomainWarpAmp = 1.0f;
    }

    private void CalculateFractalBounding() {
        float FastAbs = FastAbs(this.mGain);
        float f10 = FastAbs;
        float f11 = 1.0f;
        for (int i10 = 1; i10 < this.mOctaves; i10++) {
            f11 += f10;
            f10 *= FastAbs;
        }
        this.mFractalBounding = 1.0f / f11;
    }

    private static float CubicLerp(float a10, float b10, float c10, float d10, float t10) {
        float f10 = a10 - b10;
        float f11 = (d10 - c10) - f10;
        float f12 = t10 * t10;
        return (f12 * t10 * f11) + (f12 * (f10 - f11)) + (t10 * (c10 - a10)) + b10;
    }

    private void DoSingleDomainWarp(int seed, float amp, float freq, float x10, float y10, a coord) {
        int ordinal = this.mDomainWarpType.ordinal();
        if (ordinal == 0) {
            SingleDomainWarpSimplexGradient(seed, amp * 38.283688f, freq, x10, y10, coord, false);
        } else if (ordinal == 1) {
            SingleDomainWarpSimplexGradient(seed, amp * 16.0f, freq, x10, y10, coord, true);
        } else {
            if (ordinal != 2) {
                return;
            }
            SingleDomainWarpBasicGrid(seed, amp, freq, x10, y10, coord);
        }
    }

    private void DomainWarpFractalIndependent(a coord) {
        float f10 = coord.f79768a;
        float f11 = coord.f79769b;
        int ordinal = this.mDomainWarpType.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            float f12 = (f10 + f11) * 0.3660254f;
            f10 += f12;
            f11 += f12;
        }
        int i10 = this.mSeed;
        float f13 = this.mDomainWarpAmp * this.mFractalBounding;
        float f14 = this.mFrequency;
        for (int i11 = 0; i11 < this.mOctaves; i11++) {
            DoSingleDomainWarp(i10, f13, f14, f10, f11, coord);
            i10++;
            f13 *= this.mGain;
            f14 *= this.mLacunarity;
        }
    }

    private void DomainWarpFractalProgressive(a coord) {
        int i10 = this.mSeed;
        float f10 = this.mDomainWarpAmp * this.mFractalBounding;
        float f11 = this.mFrequency;
        for (int i11 = 0; i11 < this.mOctaves; i11++) {
            float f12 = coord.f79768a;
            float f13 = coord.f79769b;
            int ordinal = this.mDomainWarpType.ordinal();
            if (ordinal == 0 || ordinal == 1) {
                float f14 = (f12 + f13) * 0.3660254f;
                f12 += f14;
                f13 += f14;
            }
            DoSingleDomainWarp(i10, f10, f11, f12, f13, coord);
            i10++;
            f10 *= this.mGain;
            f11 *= this.mLacunarity;
        }
    }

    private void DomainWarpSingle(a coord) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding * this.mDomainWarpAmp;
        float f11 = this.mFrequency;
        float f12 = coord.f79768a;
        float f13 = coord.f79769b;
        int ordinal = this.mDomainWarpType.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            float f14 = (f12 + f13) * 0.3660254f;
            f12 += f14;
            f13 += f14;
        }
        DoSingleDomainWarp(i10, f10, f11, f12, f13, coord);
    }

    private static float FastAbs(float f10) {
        return f10 < 0.0f ? -f10 : f10;
    }

    private static int FastFloor(float f10) {
        int i10 = (int) f10;
        return f10 >= 0.0f ? i10 : i10 - 1;
    }

    private static float FastMax(float a10, float b10) {
        return a10 > b10 ? a10 : b10;
    }

    private static float FastMin(float a10, float b10) {
        return a10 < b10 ? a10 : b10;
    }

    private static int FastRound(float f10) {
        return (int) (f10 >= 0.0f ? f10 + 0.5f : f10 - 0.5f);
    }

    private static float FastSqrt(float f10) {
        return (float) Math.sqrt(f10);
    }

    private float GenFractalFBm(float x10, float y10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float GenNoiseSingle = GenNoiseSingle(i10, x10, y10);
            f11 += GenNoiseSingle * f10;
            float Lerp = f10 * Lerp(1.0f, FastMin(GenNoiseSingle + 1.0f, 2.0f) * 0.5f, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenFractalPingPong(float x10, float y10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float PingPong = PingPong((GenNoiseSingle(i10, x10, y10) + 1.0f) * this.mPingPongStrength);
            f11 += (PingPong - 0.5f) * 2.0f * f10;
            float Lerp = f10 * Lerp(1.0f, PingPong, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenFractalRidged(float x10, float y10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float FastAbs = FastAbs(GenNoiseSingle(i10, x10, y10));
            f11 += (((-2.0f) * FastAbs) + 1.0f) * f10;
            float Lerp = f10 * Lerp(1.0f, 1.0f - FastAbs, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenNoiseSingle(int seed, float x10, float y10) {
        int ordinal = this.mNoiseType.ordinal();
        if (ordinal == 0) {
            return SingleSimplex(seed, x10, y10);
        }
        if (ordinal == 1) {
            return SingleOpenSimplex2S(seed, x10, y10);
        }
        if (ordinal == 2) {
            return SingleCellular(seed, x10, y10);
        }
        if (ordinal == 3) {
            return SinglePerlin(seed, x10, y10);
        }
        if (ordinal == 4) {
            return SingleValueCubic(seed, x10, y10);
        }
        if (ordinal != 5) {
            return 0.0f;
        }
        return SingleValue(seed, x10, y10);
    }

    private static float GradCoord(int seed, int xPrimed, int yPrimed, float xd2, float yd2) {
        int Hash = Hash(seed, xPrimed, yPrimed);
        int i10 = (Hash ^ (Hash >> 15)) & 254;
        float[] fArr = Gradients2D;
        return (xd2 * fArr[i10]) + (yd2 * fArr[i10 | 1]);
    }

    private static int Hash(int seed, int xPrimed, int yPrimed) {
        return ((seed ^ xPrimed) ^ yPrimed) * 668265261;
    }

    private static float InterpHermite(float t10) {
        return t10 * t10 * (3.0f - (t10 * 2.0f));
    }

    private static float InterpQuintic(float t10) {
        return t10 * t10 * t10 * ((t10 * ((6.0f * t10) - 15.0f)) + 10.0f);
    }

    private static float Lerp(float a10, float b10, float t10) {
        return a10 + (t10 * (b10 - a10));
    }

    private static float PingPong(float t10) {
        float f10 = t10 - (((int) (0.5f * t10)) * 2);
        return f10 < 1.0f ? f10 : 2.0f - f10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x015b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:26:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float SingleCellular(int seed, float x10, float y10) {
        float f10;
        float f11;
        float f12;
        float f13;
        int i10 = seed;
        int FastRound = FastRound(x10);
        int FastRound2 = FastRound(y10);
        float f14 = this.mCellularJitterModifier * 0.43701595f;
        int i11 = FastRound - 1;
        int i12 = i11 * PrimeX;
        int i13 = FastRound2 - 1;
        int i14 = i13 * PrimeY;
        int ordinal = this.mCellularDistanceFunction.ordinal();
        float f15 = Float.MAX_VALUE;
        int i15 = 0;
        if (ordinal == 2) {
            f10 = Float.MAX_VALUE;
            while (i11 <= FastRound + 1) {
                int i16 = i14;
                int i17 = i13;
                while (i17 <= FastRound2 + 1) {
                    int Hash = Hash(i10, i12, i16);
                    int i18 = Hash & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr = RandVecs2D;
                    float FastAbs = FastAbs((i11 - x10) + (fArr[i18] * f14)) + FastAbs((i17 - y10) + (fArr[i18 | 1] * f14));
                    f10 = FastMax(FastMin(f10, FastAbs), f15);
                    if (FastAbs < f15) {
                        i15 = Hash;
                        f15 = FastAbs;
                    }
                    i16 += PrimeY;
                    i17++;
                    i10 = seed;
                }
                i12 += PrimeX;
                i11++;
                i10 = seed;
            }
        } else {
            if (ordinal != 3) {
                f11 = Float.MAX_VALUE;
                while (i11 <= FastRound + 1) {
                    int i19 = i13;
                    int i20 = i14;
                    while (i19 <= FastRound2 + 1) {
                        int Hash2 = Hash(i10, i12, i20);
                        int i21 = Hash2 & TypedValues.PositionType.TYPE_POSITION_TYPE;
                        float[] fArr2 = RandVecs2D;
                        float f16 = (i11 - x10) + (fArr2[i21] * f14);
                        int i22 = i13;
                        float f17 = (i19 - y10) + (fArr2[i21 | 1] * f14);
                        float f18 = (f16 * f16) + (f17 * f17);
                        f11 = FastMax(FastMin(f11, f18), f15);
                        if (f18 < f15) {
                            f15 = f18;
                            i15 = Hash2;
                        }
                        i20 += PrimeY;
                        i19++;
                        i13 = i22;
                    }
                    i12 += PrimeX;
                    i11++;
                }
                if (this.mCellularDistanceFunction == CellularDistanceFunction.Euclidean && this.mCellularReturnType != CellularReturnType.CellValue) {
                    f15 = FastSqrt(f15);
                    if (this.mCellularReturnType != CellularReturnType.Distance) {
                        f11 = FastSqrt(f11);
                    }
                }
                switch (this.mCellularReturnType) {
                    case null:
                        return i15 * 4.656613E-10f;
                    case 1:
                        return f15 - 1.0f;
                    case 2:
                        return f11 - 1.0f;
                    case 3:
                        f12 = f11 + f15;
                        f13 = f12 * 0.5f;
                        return f13 - 1.0f;
                    case 4:
                        f13 = f11 - f15;
                        return f13 - 1.0f;
                    case 5:
                        f12 = f11 * f15;
                        f13 = f12 * 0.5f;
                        return f13 - 1.0f;
                    case 6:
                        return (f15 / f11) - 1.0f;
                    default:
                        return 0.0f;
                }
            }
            f10 = Float.MAX_VALUE;
            while (i11 <= FastRound + 1) {
                int i23 = i14;
                int i24 = i13;
                while (i24 <= FastRound2 + 1) {
                    int Hash3 = Hash(i10, i12, i23);
                    int i25 = Hash3 & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr3 = RandVecs2D;
                    float f19 = (i11 - x10) + (fArr3[i25] * f14);
                    int i26 = i14;
                    float f20 = (i24 - y10) + (fArr3[i25 | 1] * f14);
                    float FastAbs2 = FastAbs(f19) + FastAbs(f20) + (f19 * f19) + (f20 * f20);
                    f10 = FastMax(FastMin(f10, FastAbs2), f15);
                    if (FastAbs2 < f15) {
                        i15 = Hash3;
                        f15 = FastAbs2;
                    }
                    i23 += PrimeY;
                    i24++;
                    i14 = i26;
                }
                i12 += PrimeX;
                i11++;
            }
        }
        f11 = f10;
        if (this.mCellularDistanceFunction == CellularDistanceFunction.Euclidean) {
            f15 = FastSqrt(f15);
            if (this.mCellularReturnType != CellularReturnType.Distance) {
            }
        }
        switch (this.mCellularReturnType) {
        }
    }

    private void SingleDomainWarpBasicGrid(int seed, float warpAmp, float frequency, float x10, float y10, a coord) {
        float f10 = x10 * frequency;
        float f11 = y10 * frequency;
        int FastFloor = FastFloor(f10);
        int FastFloor2 = FastFloor(f11);
        float InterpHermite = InterpHermite(f10 - FastFloor);
        float InterpHermite2 = InterpHermite(f11 - FastFloor2);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = PrimeX + i10;
        int i13 = PrimeY + i11;
        int Hash = Hash(seed, i10, i11) & TypedValues.PositionType.TYPE_POSITION_TYPE;
        int Hash2 = Hash(seed, i12, i11) & TypedValues.PositionType.TYPE_POSITION_TYPE;
        float[] fArr = RandVecs2D;
        float Lerp = Lerp(fArr[Hash], fArr[Hash2], InterpHermite);
        float Lerp2 = Lerp(fArr[Hash | 1], fArr[Hash2 | 1], InterpHermite);
        int Hash3 = Hash(seed, i10, i13) & TypedValues.PositionType.TYPE_POSITION_TYPE;
        int Hash4 = Hash(seed, i12, i13) & TypedValues.PositionType.TYPE_POSITION_TYPE;
        float Lerp3 = Lerp(fArr[Hash3], fArr[Hash4], InterpHermite);
        float Lerp4 = Lerp(fArr[Hash3 | 1], fArr[Hash4 | 1], InterpHermite);
        coord.f79768a += Lerp(Lerp, Lerp3, InterpHermite2) * warpAmp;
        coord.f79769b += Lerp(Lerp2, Lerp4, InterpHermite2) * warpAmp;
    }

    private void SingleDomainWarpOpenSimplex2Gradient(int seed, float warpAmp, float frequency, float x10, float y10, float z10, b coord, boolean outGradOnly) {
        float f10;
        int i10;
        int i11;
        float f11;
        int i12;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18 = x10 * frequency;
        float f19 = y10 * frequency;
        float f20 = z10 * frequency;
        int FastRound = FastRound(f18);
        int FastRound2 = FastRound(f19);
        int FastRound3 = FastRound(f20);
        float f21 = f18 - FastRound;
        float f22 = f19 - FastRound2;
        float f23 = f20 - FastRound3;
        float f24 = -f21;
        int i13 = ((int) (f24 - 1.0f)) | 1;
        float f25 = -f22;
        int i14 = ((int) (f25 - 1.0f)) | 1;
        float f26 = -f23;
        int i15 = ((int) (f26 - 1.0f)) | 1;
        float f27 = i13 * f24;
        float f28 = i14 * f25;
        float f29 = i15 * f26;
        int i16 = PrimeX;
        int i17 = FastRound * PrimeX;
        int i18 = FastRound2 * PrimeY;
        float f30 = 0.0f;
        float f31 = 0.0f;
        float f32 = 0.0f;
        int i19 = 0;
        float f33 = (0.6f - (f21 * f21)) - ((f22 * f22) + (f23 * f23));
        float f34 = f27;
        int i20 = i15;
        int i21 = i14;
        float f35 = f29;
        int i22 = i13;
        float f36 = f28;
        int i23 = FastRound3 * PrimeZ;
        int i24 = i18;
        int i25 = i17;
        float f37 = f23;
        float f38 = f22;
        float f39 = f21;
        int i26 = seed;
        while (true) {
            if (f33 > 0.0f) {
                float f40 = f33 * f33;
                float f41 = f40 * f40;
                if (outGradOnly) {
                    int Hash = Hash(i26, i25, i24, i23) & 1020;
                    float[] fArr = RandVecs3D;
                    f16 = fArr[Hash];
                    f15 = fArr[Hash | 1];
                    f17 = fArr[Hash | 2];
                } else {
                    int Hash2 = Hash(i26, i25, i24, i23);
                    int i27 = Hash2 & 252;
                    int i28 = (Hash2 >> 6) & 1020;
                    float[] fArr2 = Gradients3D;
                    float f42 = (fArr2[i27] * f39) + (fArr2[i27 | 1] * f38) + (fArr2[i27 | 2] * f37);
                    float[] fArr3 = RandVecs3D;
                    float f43 = fArr3[i28];
                    f15 = fArr3[i28 | 1] * f42;
                    float f44 = fArr3[i28 | 2] * f42;
                    f16 = f42 * f43;
                    f17 = f44;
                }
                f30 += f16 * f41;
                f31 += f15 * f41;
                f32 += f41 * f17;
            }
            if (f34 < f36 || f34 < f35) {
                if (f36 <= f34 || f36 < f35) {
                    f37 += i20;
                    f10 = f33 + f35 + f35;
                    i10 = i24;
                    i11 = i23;
                    i23 -= i20 * PrimeZ;
                } else {
                    f38 += i21;
                    f10 = f33 + f36 + f36;
                    i11 = i23;
                    i10 = i24 - (i21 * PrimeY);
                }
                f11 = 1.0f;
                i12 = i25;
            } else {
                f39 += i22;
                f10 = f33 + f34 + f34;
                i12 = i25 - (i22 * i16);
                i10 = i24;
                i11 = i23;
                f11 = 1.0f;
            }
            if (f10 > f11) {
                float f45 = f10 - f11;
                float f46 = f45 * f45;
                float f47 = f46 * f46;
                if (outGradOnly) {
                    int Hash3 = Hash(i26, i12, i10, i23) & 1020;
                    float[] fArr4 = RandVecs3D;
                    f12 = fArr4[Hash3];
                    f13 = fArr4[Hash3 | 1];
                    f14 = fArr4[Hash3 | 2];
                } else {
                    int Hash4 = Hash(i26, i12, i10, i23);
                    int i29 = Hash4 & 252;
                    int i30 = (Hash4 >> 6) & 1020;
                    float[] fArr5 = Gradients3D;
                    float f48 = (f39 * fArr5[i29]) + (f38 * fArr5[i29 | 1]) + (f37 * fArr5[i29 | 2]);
                    float[] fArr6 = RandVecs3D;
                    float f49 = fArr6[i30];
                    float f50 = fArr6[i30 | 1];
                    float f51 = fArr6[i30 | 2];
                    f12 = f49 * f48;
                    f13 = f48 * f50;
                    f14 = f48 * f51;
                }
                f30 += f12 * f47;
                f31 += f13 * f47;
                f32 += f47 * f14;
            }
            int i31 = i19;
            if (i31 == 1) {
                coord.f79770a += f30 * warpAmp;
                coord.f79771b += f31 * warpAmp;
                coord.f79772c += f32 * warpAmp;
                return;
            }
            f34 = 0.5f - f34;
            f36 = 0.5f - f36;
            f35 = 0.5f - f35;
            float f52 = i22 * f34;
            float f53 = i21 * f36;
            float f54 = i20 * f35;
            f33 += (0.75f - f34) - (f36 + f35);
            i16 = PrimeX;
            i25 += (i22 >> 1) & PrimeX;
            i24 += (i21 >> 1) & PrimeY;
            int i32 = i11 + ((i20 >> 1) & PrimeZ);
            i22 = -i22;
            i21 = -i21;
            i20 = -i20;
            i26 += 1293373;
            i19 = i31 + 1;
            f38 = f53;
            i23 = i32;
            f39 = f52;
            f37 = f54;
        }
    }

    private void SingleDomainWarpSimplexGradient(int seed, float warpAmp, float frequency, float x10, float y10, a coord, boolean outGradOnly) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22 = x10 * frequency;
        float f23 = y10 * frequency;
        int FastFloor = FastFloor(f22);
        int FastFloor2 = FastFloor(f23);
        float f24 = f22 - FastFloor;
        float f25 = f23 - FastFloor2;
        float f26 = (f24 + f25) * 0.21132487f;
        float f27 = f24 - f26;
        float f28 = f25 - f26;
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        float f29 = (0.5f - (f27 * f27)) - (f28 * f28);
        if (f29 > 0.0f) {
            float f30 = f29 * f29;
            float f31 = f30 * f30;
            if (outGradOnly) {
                int Hash = Hash(seed, i10, i11) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                float[] fArr = RandVecs2D;
                f20 = fArr[Hash];
                f21 = fArr[Hash | 1];
            } else {
                int Hash2 = Hash(seed, i10, i11);
                int i12 = Hash2 & 254;
                int i13 = (Hash2 >> 7) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                float[] fArr2 = Gradients2D;
                float f32 = (fArr2[i12] * f27) + (fArr2[i12 | 1] * f28);
                float[] fArr3 = RandVecs2D;
                f20 = fArr3[i13] * f32;
                f21 = fArr3[i13 | 1] * f32;
            }
            f11 = (f20 * f31) + 0.0f;
            f10 = (f31 * f21) + 0.0f;
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        float f33 = (f26 * 3.1547005f) + (f29 - 0.6666666f);
        if (f33 > 0.0f) {
            float f34 = f27 - 0.57735026f;
            float f35 = (-0.57735026f) + f28;
            float f36 = f33 * f33;
            float f37 = f36 * f36;
            if (outGradOnly) {
                int Hash3 = Hash(seed, i10 + PrimeX, i11 + PrimeY) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                float[] fArr4 = RandVecs2D;
                f18 = fArr4[Hash3];
                f19 = fArr4[Hash3 | 1];
            } else {
                int Hash4 = Hash(seed, i10 + PrimeX, i11 + PrimeY);
                int i14 = Hash4 & 254;
                int i15 = (Hash4 >> 7) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                float[] fArr5 = Gradients2D;
                float f38 = (f34 * fArr5[i14]) + (f35 * fArr5[i14 | 1]);
                float[] fArr6 = RandVecs2D;
                f18 = fArr6[i15] * f38;
                f19 = f38 * fArr6[i15 | 1];
            }
            f11 += f18 * f37;
            f10 += f37 * f19;
        }
        if (f28 > f27) {
            float f39 = f27 + 0.21132487f;
            float f40 = f28 - 0.7886751f;
            float f41 = (0.5f - (f39 * f39)) - (f40 * f40);
            if (f41 > 0.0f) {
                float f42 = f41 * f41;
                f12 = f42 * f42;
                if (outGradOnly) {
                    int Hash5 = Hash(seed, i10, i11 + PrimeY) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr7 = RandVecs2D;
                    f16 = fArr7[Hash5];
                    f17 = fArr7[Hash5 | 1];
                    f11 += f16 * f12;
                    f10 += f12 * f17;
                } else {
                    int Hash6 = Hash(seed, i10, i11 + PrimeY);
                    int i16 = Hash6 & 254;
                    int i17 = (Hash6 >> 7) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr8 = Gradients2D;
                    f13 = (f39 * fArr8[i16]) + (f40 * fArr8[i16 | 1]);
                    float[] fArr9 = RandVecs2D;
                    f14 = fArr9[i17];
                    f15 = fArr9[i17 | 1];
                    f16 = f13 * f14;
                    f17 = f15 * f13;
                    f11 += f16 * f12;
                    f10 += f12 * f17;
                }
            }
        } else {
            float f43 = f27 - 0.7886751f;
            float f44 = f28 + 0.21132487f;
            float f45 = (0.5f - (f43 * f43)) - (f44 * f44);
            if (f45 > 0.0f) {
                float f46 = f45 * f45;
                f12 = f46 * f46;
                if (outGradOnly) {
                    int Hash7 = Hash(seed, i10 + PrimeX, i11) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr10 = RandVecs2D;
                    f16 = fArr10[Hash7];
                    f17 = fArr10[Hash7 | 1];
                    f11 += f16 * f12;
                    f10 += f12 * f17;
                } else {
                    int Hash8 = Hash(seed, i10 + PrimeX, i11);
                    int i18 = Hash8 & 254;
                    int i19 = (Hash8 >> 7) & TypedValues.PositionType.TYPE_POSITION_TYPE;
                    float[] fArr11 = Gradients2D;
                    f13 = (f43 * fArr11[i18]) + (f44 * fArr11[i18 | 1]);
                    float[] fArr12 = RandVecs2D;
                    f14 = fArr12[i19];
                    f15 = fArr12[i19 | 1];
                    f16 = f13 * f14;
                    f17 = f15 * f13;
                    f11 += f16 * f12;
                    f10 += f12 * f17;
                }
            }
        }
        coord.f79768a += f11 * warpAmp;
        coord.f79769b += f10 * warpAmp;
    }

    private float SingleOpenSimplex2(int seed, float x10, float y10, float z10) {
        float f10;
        float GradCoord;
        int FastRound = FastRound(x10);
        int FastRound2 = FastRound(y10);
        int FastRound3 = FastRound(z10);
        float f11 = x10 - FastRound;
        float f12 = y10 - FastRound2;
        float f13 = z10 - FastRound3;
        int i10 = ((int) ((-1.0f) - f11)) | 1;
        int i11 = ((int) ((-1.0f) - f12)) | 1;
        int i12 = ((int) ((-1.0f) - f13)) | 1;
        float f14 = i10 * (-f11);
        float f15 = i11 * (-f12);
        float f16 = i12 * (-f13);
        int i13 = PrimeX;
        int i14 = FastRound * PrimeX;
        int i15 = PrimeY;
        int i16 = FastRound2 * PrimeY;
        float f17 = (0.6f - (f11 * f11)) - ((f12 * f12) + (f13 * f13));
        float f18 = f13;
        float f19 = 0.0f;
        float f20 = f11;
        int i17 = FastRound3 * PrimeZ;
        int i18 = i16;
        int i19 = i14;
        int i20 = seed;
        float f21 = f12;
        int i21 = 0;
        while (true) {
            if (f17 > 0.0f) {
                float f22 = f17 * f17;
                f19 += f22 * f22 * GradCoord(i20, i19, i18, i17, f20, f21, f18);
            }
            if (f14 >= f15 && f14 >= f16) {
                float f23 = f17 + f14 + f14;
                if (f23 > 1.0f) {
                    float f24 = f23 - 1.0f;
                    float f25 = f24 * f24;
                    f19 += f25 * f25 * GradCoord(i20, i19 - (i10 * i13), i18, i17, f20 + i10, f21, f18);
                }
            } else if (f15 <= f14 || f15 < f16) {
                float f26 = f17 + f16 + f16;
                if (f26 > 1.0f) {
                    float f27 = f26 - 1.0f;
                    float f28 = f27 * f27;
                    f10 = f28 * f28;
                    GradCoord = GradCoord(i20, i19, i18, i17 - (i12 * PrimeZ), f20, f21, f18 + i12);
                    f19 += f10 * GradCoord;
                }
            } else {
                float f29 = f17 + f15 + f15;
                if (f29 > 1.0f) {
                    float f30 = f29 - 1.0f;
                    float f31 = f30 * f30;
                    f10 = f31 * f31;
                    GradCoord = GradCoord(i20, i19, i18 - (i11 * i15), i17, f20, f21 + i11, f18);
                    f19 += f10 * GradCoord;
                }
            }
            if (i21 == 1) {
                return f19 * 32.694283f;
            }
            f14 = 0.5f - f14;
            f15 = 0.5f - f15;
            f16 = 0.5f - f16;
            f20 = i10 * f14;
            f21 = i11 * f15;
            f18 = i12 * f16;
            f17 += (0.75f - f14) - (f15 + f16);
            i19 += (i10 >> 1) & PrimeX;
            i18 += (i11 >> 1) & PrimeY;
            i17 += (i12 >> 1) & PrimeZ;
            i10 = -i10;
            i11 = -i11;
            i12 = -i12;
            i20 = ~i20;
            i21++;
            i13 = PrimeX;
            i15 = PrimeY;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float SingleOpenSimplex2S(int seed, float x10, float y10) {
        float f10;
        float GradCoord;
        float f11;
        float GradCoord2;
        float f12;
        float GradCoord3;
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        float f13 = x10 - FastFloor;
        float f14 = y10 - FastFloor2;
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = i10 + PrimeX;
        int i13 = i11 + PrimeY;
        float f15 = (f13 + f14) * 0.21132487f;
        float f16 = f13 - f15;
        float f17 = f14 - f15;
        float f18 = (0.6666667f - (f16 * f16)) - (f17 * f17);
        float f19 = f18 * f18;
        float f20 = (3.1547005f * f15) + (f18 - 0.6666666f);
        float f21 = f20 * f20;
        float GradCoord4 = (f19 * f19 * GradCoord(seed, i10, i11, f16, f17)) + (f21 * f21 * GradCoord(seed, i12, i13, f16 - 0.57735026f, f17 - 0.57735026f));
        float f22 = f13 - f14;
        if (f15 > 0.21132487f) {
            if (f13 + f22 > 1.0f) {
                float f23 = f16 - 1.3660254f;
                float f24 = f17 - 0.3660254f;
                float f25 = (0.6666667f - (f23 * f23)) - (f24 * f24);
                if (f25 > 0.0f) {
                    float f26 = f25 * f25;
                    f12 = f26 * f26;
                    GradCoord3 = GradCoord(seed, i10 + 1002250642, i13, f23, f24);
                    GradCoord4 += f12 * GradCoord3;
                }
                if (f14 - f22 <= 1.0f) {
                    float f27 = f16 - 0.3660254f;
                    float f28 = f17 - 1.3660254f;
                    float f29 = (0.6666667f - (f27 * f27)) - (f28 * f28);
                    if (f29 > 0.0f) {
                        float f30 = f29 * f29;
                        f11 = f30 * f30;
                        GradCoord2 = GradCoord(seed, i12, i11 - 2021106534, f27, f28);
                        GradCoord4 += f11 * GradCoord2;
                    }
                } else {
                    float f31 = f16 - 0.7886751f;
                    float f32 = f17 + 0.21132487f;
                    float f33 = (0.6666667f - (f31 * f31)) - (f32 * f32);
                    if (f33 > 0.0f) {
                        float f34 = f33 * f33;
                        f11 = f34 * f34;
                        GradCoord2 = GradCoord(seed, i12, i11, f31, f32);
                        GradCoord4 += f11 * GradCoord2;
                    }
                }
            } else {
                float f35 = f16 + 0.21132487f;
                float f36 = f17 - 0.7886751f;
                float f37 = (0.6666667f - (f35 * f35)) - (f36 * f36);
                if (f37 > 0.0f) {
                    float f38 = f37 * f37;
                    f12 = f38 * f38;
                    GradCoord3 = GradCoord(seed, i10, i13, f35, f36);
                    GradCoord4 += f12 * GradCoord3;
                }
                if (f14 - f22 <= 1.0f) {
                }
            }
        } else if (f13 + f22 < 0.0f) {
            float f39 = 0.7886751f + f16;
            float f40 = f17 - 0.21132487f;
            float f41 = (0.6666667f - (f39 * f39)) - (f40 * f40);
            if (f41 > 0.0f) {
                float f42 = f41 * f41;
                f10 = f42 * f42;
                GradCoord = GradCoord(seed, i10 - PrimeX, i11, f39, f40);
                GradCoord4 += f10 * GradCoord;
            }
            if (f14 >= f22) {
                float f43 = f16 - 0.21132487f;
                float f44 = f17 - (-0.7886751f);
                float f45 = (0.6666667f - (f43 * f43)) - (f44 * f44);
                if (f45 > 0.0f) {
                    float f46 = f45 * f45;
                    f11 = f46 * f46;
                    GradCoord2 = GradCoord(seed, i10, i11 - PrimeY, f43, f44);
                    GradCoord4 += f11 * GradCoord2;
                }
            } else {
                float f47 = f16 + 0.21132487f;
                float f48 = f17 - 0.7886751f;
                float f49 = (0.6666667f - (f47 * f47)) - (f48 * f48);
                if (f49 > 0.0f) {
                    float f50 = f49 * f49;
                    f11 = f50 * f50;
                    GradCoord2 = GradCoord(seed, i10, i13, f47, f48);
                    GradCoord4 += f11 * GradCoord2;
                }
            }
        } else {
            float f51 = f16 - 0.7886751f;
            float f52 = f17 + 0.21132487f;
            float f53 = (0.6666667f - (f51 * f51)) - (f52 * f52);
            if (f53 > 0.0f) {
                float f54 = f53 * f53;
                f10 = f54 * f54;
                GradCoord = GradCoord(seed, i12, i11, f51, f52);
                GradCoord4 += f10 * GradCoord;
            }
            if (f14 >= f22) {
            }
        }
        return GradCoord4 * 18.241962f;
    }

    private float SinglePerlin(int seed, float x10, float y10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        float f10 = x10 - FastFloor;
        float f11 = y10 - FastFloor2;
        float f12 = f10 - 1.0f;
        float f13 = f11 - 1.0f;
        float InterpQuintic = InterpQuintic(f10);
        float InterpQuintic2 = InterpQuintic(f11);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = PrimeX + i10;
        int i13 = PrimeY + i11;
        return Lerp(Lerp(GradCoord(seed, i10, i11, f10, f11), GradCoord(seed, i12, i11, f12, f11), InterpQuintic), Lerp(GradCoord(seed, i10, i13, f10, f13), GradCoord(seed, i12, i13, f12, f13), InterpQuintic), InterpQuintic2) * 1.4247692f;
    }

    private float SingleSimplex(int seed, float x10, float y10) {
        float GradCoord;
        float GradCoord2;
        float f10;
        float GradCoord3;
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        float f11 = x10 - FastFloor;
        float f12 = y10 - FastFloor2;
        float f13 = (f11 + f12) * 0.21132487f;
        float f14 = f11 - f13;
        float f15 = f12 - f13;
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        float f16 = (0.5f - (f14 * f14)) - (f15 * f15);
        float f17 = 0.0f;
        if (f16 <= 0.0f) {
            GradCoord = 0.0f;
        } else {
            float f18 = f16 * f16;
            GradCoord = f18 * f18 * GradCoord(seed, i10, i11, f14, f15);
        }
        float f19 = (f13 * 3.1547005f) + (f16 - 0.6666666f);
        if (f19 <= 0.0f) {
            GradCoord2 = 0.0f;
        } else {
            float f20 = f19 * f19;
            GradCoord2 = f20 * f20 * GradCoord(seed, i10 + PrimeX, i11 + PrimeY, f14 - 0.57735026f, (-0.57735026f) + f15);
        }
        if (f15 > f14) {
            float f21 = f14 + 0.21132487f;
            float f22 = f15 - 0.7886751f;
            float f23 = (0.5f - (f21 * f21)) - (f22 * f22);
            if (f23 > 0.0f) {
                float f24 = f23 * f23;
                f10 = f24 * f24;
                GradCoord3 = GradCoord(seed, i10, i11 + PrimeY, f21, f22);
                f17 = f10 * GradCoord3;
            }
        } else {
            float f25 = f14 - 0.7886751f;
            float f26 = f15 + 0.21132487f;
            float f27 = (0.5f - (f25 * f25)) - (f26 * f26);
            if (f27 > 0.0f) {
                float f28 = f27 * f27;
                f10 = f28 * f28;
                GradCoord3 = GradCoord(seed, i10 + PrimeX, i11, f25, f26);
                f17 = f10 * GradCoord3;
            }
        }
        return (GradCoord + f17 + GradCoord2) * 99.83685f;
    }

    private float SingleValue(int seed, float x10, float y10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        float InterpHermite = InterpHermite(x10 - FastFloor);
        float InterpHermite2 = InterpHermite(y10 - FastFloor2);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = PrimeX + i10;
        int i13 = PrimeY + i11;
        return Lerp(Lerp(ValCoord(seed, i10, i11), ValCoord(seed, i12, i11), InterpHermite), Lerp(ValCoord(seed, i10, i13), ValCoord(seed, i12, i13), InterpHermite), InterpHermite2);
    }

    private float SingleValueCubic(int seed, float x10, float y10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        float f10 = x10 - FastFloor;
        float f11 = y10 - FastFloor2;
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = i10 - PrimeX;
        int i13 = i11 - PrimeY;
        int i14 = PrimeX + i10;
        int i15 = PrimeY + i11;
        int i16 = 1002250642 + i10;
        int i17 = (-2021106534) + i11;
        return CubicLerp(CubicLerp(ValCoord(seed, i12, i13), ValCoord(seed, i10, i13), ValCoord(seed, i14, i13), ValCoord(seed, i16, i13), f10), CubicLerp(ValCoord(seed, i12, i11), ValCoord(seed, i10, i11), ValCoord(seed, i14, i11), ValCoord(seed, i16, i11), f10), CubicLerp(ValCoord(seed, i12, i15), ValCoord(seed, i10, i15), ValCoord(seed, i14, i15), ValCoord(seed, i16, i15), f10), CubicLerp(ValCoord(seed, i12, i17), ValCoord(seed, i10, i17), ValCoord(seed, i14, i17), ValCoord(seed, i16, i17), f10), f11) * 0.44444445f;
    }

    private void UpdateTransformType3D() {
        int ordinal = this.mRotationType3D.ordinal();
        if (ordinal == 1) {
            this.mTransformType3D = TransformType3D.ImproveXYPlanes;
            return;
        }
        if (ordinal == 2) {
            this.mTransformType3D = TransformType3D.ImproveXZPlanes;
            return;
        }
        int ordinal2 = this.mNoiseType.ordinal();
        if (ordinal2 == 0 || ordinal2 == 1) {
            this.mTransformType3D = TransformType3D.DefaultOpenSimplex2;
        } else {
            this.mTransformType3D = TransformType3D.None;
        }
    }

    private void UpdateWarpTransformType3D() {
        int ordinal = this.mRotationType3D.ordinal();
        if (ordinal == 1) {
            this.mWarpTransformType3D = TransformType3D.ImproveXYPlanes;
            return;
        }
        if (ordinal == 2) {
            this.mWarpTransformType3D = TransformType3D.ImproveXZPlanes;
            return;
        }
        int ordinal2 = this.mDomainWarpType.ordinal();
        if (ordinal2 == 0 || ordinal2 == 1) {
            this.mWarpTransformType3D = TransformType3D.DefaultOpenSimplex2;
        } else {
            this.mWarpTransformType3D = TransformType3D.None;
        }
    }

    private static float ValCoord(int seed, int xPrimed, int yPrimed) {
        int Hash = Hash(seed, xPrimed, yPrimed);
        int i10 = Hash * Hash;
        return (i10 ^ (i10 << 19)) * 4.656613E-10f;
    }

    public void DomainWarp(a coord) {
        int ordinal = this.mFractalType.ordinal();
        if (ordinal == 4) {
            DomainWarpFractalProgressive(coord);
        } else if (ordinal != 5) {
            DomainWarpSingle(coord);
        } else {
            DomainWarpFractalIndependent(coord);
        }
    }

    public float GetNoise(float x10, float y10) {
        float f10 = this.mFrequency;
        float f11 = x10 * f10;
        float f12 = y10 * f10;
        int ordinal = this.mNoiseType.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            float f13 = (f11 + f12) * 0.3660254f;
            f11 += f13;
            f12 += f13;
        }
        int ordinal2 = this.mFractalType.ordinal();
        if (ordinal2 == 1) {
            return GenFractalFBm(f11, f12);
        }
        if (ordinal2 == 2) {
            return GenFractalRidged(f11, f12);
        }
        if (ordinal2 != 3) {
            return GenNoiseSingle(this.mSeed, f11, f12);
        }
        return GenFractalPingPong(f11, f12);
    }

    public void SetCellularDistanceFunction(CellularDistanceFunction cellularDistanceFunction) {
        this.mCellularDistanceFunction = cellularDistanceFunction;
    }

    public void SetCellularJitter(float cellularJitter) {
        this.mCellularJitterModifier = cellularJitter;
    }

    public void SetCellularReturnType(CellularReturnType cellularReturnType) {
        this.mCellularReturnType = cellularReturnType;
    }

    public void SetDomainWarpAmp(float domainWarpAmp) {
        this.mDomainWarpAmp = domainWarpAmp;
    }

    public void SetDomainWarpType(DomainWarpType domainWarpType) {
        this.mDomainWarpType = domainWarpType;
        UpdateWarpTransformType3D();
    }

    public void SetFractalGain(float gain) {
        this.mGain = gain;
        CalculateFractalBounding();
    }

    public void SetFractalLacunarity(float lacunarity) {
        this.mLacunarity = lacunarity;
    }

    public void SetFractalOctaves(int octaves) {
        this.mOctaves = octaves;
        CalculateFractalBounding();
    }

    public void SetFractalPingPongStrength(float pingPongStrength) {
        this.mPingPongStrength = pingPongStrength;
    }

    public void SetFractalType(FractalType fractalType) {
        this.mFractalType = fractalType;
    }

    public void SetFractalWeightedStrength(float weightedStrength) {
        this.mWeightedStrength = weightedStrength;
    }

    public void SetFrequency(float frequency) {
        this.mFrequency = frequency;
    }

    public void SetNoiseType(NoiseType noiseType) {
        this.mNoiseType = noiseType;
        UpdateTransformType3D();
    }

    public void SetRotationType3D(RotationType3D rotationType3D) {
        this.mRotationType3D = rotationType3D;
        UpdateTransformType3D();
        UpdateWarpTransformType3D();
    }

    public void SetSeed(int seed) {
        this.mSeed = seed;
    }

    private static int Hash(int seed, int xPrimed, int yPrimed, int zPrimed) {
        return (((seed ^ xPrimed) ^ yPrimed) ^ zPrimed) * 668265261;
    }

    private static float ValCoord(int seed, int xPrimed, int yPrimed, int zPrimed) {
        int Hash = Hash(seed, xPrimed, yPrimed, zPrimed);
        int i10 = Hash * Hash;
        return (i10 ^ (i10 << 19)) * 4.656613E-10f;
    }

    private static float GradCoord(int seed, int xPrimed, int yPrimed, int zPrimed, float xd2, float yd2, float zd2) {
        int Hash = Hash(seed, xPrimed, yPrimed, zPrimed);
        int i10 = (Hash ^ (Hash >> 15)) & 252;
        float[] fArr = Gradients3D;
        return (xd2 * fArr[i10]) + (yd2 * fArr[i10 | 1]) + (zd2 * fArr[i10 | 2]);
    }

    private void DoSingleDomainWarp(int seed, float amp, float freq, float x10, float y10, float z10, b coord) {
        int ordinal = this.mDomainWarpType.ordinal();
        if (ordinal == 0) {
            SingleDomainWarpOpenSimplex2Gradient(seed, amp * 32.694283f, freq, x10, y10, z10, coord, false);
        } else if (ordinal == 1) {
            SingleDomainWarpOpenSimplex2Gradient(seed, amp * 7.716049f, freq, x10, y10, z10, coord, true);
        } else {
            if (ordinal != 2) {
                return;
            }
            SingleDomainWarpBasicGrid(seed, amp, freq, x10, y10, z10, coord);
        }
    }

    public void DomainWarp(b coord) {
        int ordinal = this.mFractalType.ordinal();
        if (ordinal == 4) {
            DomainWarpFractalProgressive(coord);
        } else if (ordinal != 5) {
            DomainWarpSingle(coord);
        } else {
            DomainWarpFractalIndependent(coord);
        }
    }

    private void DomainWarpSingle(b coord) {
        float f10;
        int i10 = this.mSeed;
        float f11 = this.mFractalBounding * this.mDomainWarpAmp;
        float f12 = this.mFrequency;
        float f13 = coord.f79770a;
        float f14 = coord.f79771b;
        float f15 = coord.f79772c;
        int ordinal = this.mWarpTransformType3D.ordinal();
        if (ordinal == 1) {
            float f16 = f13 + f14;
            float f17 = (-0.21132487f) * f16;
            float f18 = f15 * 0.57735026f;
            f13 += f17 - f18;
            f14 = (f14 + f17) - f18;
            f15 = f18 + (f16 * 0.57735026f);
        } else if (ordinal == 2) {
            float f19 = f13 + f15;
            float f20 = f14 * 0.57735026f;
            float f21 = ((-0.21132487f) * f19) - f20;
            f13 += f21;
            f15 += f21;
            f14 = f20 + (f19 * 0.57735026f);
        } else if (ordinal == 3) {
            float f22 = (f13 + f14 + f15) * 0.6666667f;
            f13 = f22 - f13;
            f14 = f22 - f14;
            f10 = f22 - f15;
            DoSingleDomainWarp(i10, f11, f12, f13, f14, f10, coord);
        }
        f10 = f15;
        DoSingleDomainWarp(i10, f11, f12, f13, f14, f10, coord);
    }

    private float GenFractalFBm(float x10, float y10, float z10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float GenNoiseSingle = GenNoiseSingle(i10, x10, y10, z10);
            f11 += GenNoiseSingle * f10;
            float Lerp = f10 * Lerp(1.0f, (GenNoiseSingle + 1.0f) * 0.5f, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            z10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenFractalPingPong(float x10, float y10, float z10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float PingPong = PingPong((GenNoiseSingle(i10, x10, y10, z10) + 1.0f) * this.mPingPongStrength);
            f11 += (PingPong - 0.5f) * 2.0f * f10;
            float Lerp = f10 * Lerp(1.0f, PingPong, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            z10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenFractalRidged(float x10, float y10, float z10) {
        int i10 = this.mSeed;
        float f10 = this.mFractalBounding;
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 < this.mOctaves) {
            int i12 = i10 + 1;
            float FastAbs = FastAbs(GenNoiseSingle(i10, x10, y10, z10));
            f11 += (((-2.0f) * FastAbs) + 1.0f) * f10;
            float Lerp = f10 * Lerp(1.0f, 1.0f - FastAbs, this.mWeightedStrength);
            float f12 = this.mLacunarity;
            x10 *= f12;
            y10 *= f12;
            z10 *= f12;
            f10 = Lerp * this.mGain;
            i11++;
            i10 = i12;
        }
        return f11;
    }

    private float GenNoiseSingle(int seed, float x10, float y10, float z10) {
        int ordinal = this.mNoiseType.ordinal();
        if (ordinal == 0) {
            return SingleOpenSimplex2(seed, x10, y10, z10);
        }
        if (ordinal == 1) {
            return SingleOpenSimplex2S(seed, x10, y10, z10);
        }
        if (ordinal == 2) {
            return SingleCellular(seed, x10, y10, z10);
        }
        if (ordinal == 3) {
            return SinglePerlin(seed, x10, y10, z10);
        }
        if (ordinal == 4) {
            return SingleValueCubic(seed, x10, y10, z10);
        }
        if (ordinal != 5) {
            return 0.0f;
        }
        return SingleValue(seed, x10, y10, z10);
    }

    private float SinglePerlin(int seed, float x10, float y10, float z10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        int FastFloor3 = FastFloor(z10);
        float f10 = x10 - FastFloor;
        float f11 = y10 - FastFloor2;
        float f12 = z10 - FastFloor3;
        float f13 = f10 - 1.0f;
        float f14 = f11 - 1.0f;
        float f15 = f12 - 1.0f;
        float InterpQuintic = InterpQuintic(f10);
        float InterpQuintic2 = InterpQuintic(f11);
        float InterpQuintic3 = InterpQuintic(f12);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = FastFloor3 * PrimeZ;
        int i13 = i10 + PrimeX;
        int i14 = i11 + PrimeY;
        int i15 = i12 + PrimeZ;
        return Lerp(Lerp(Lerp(GradCoord(seed, i10, i11, i12, f10, f11, f12), GradCoord(seed, i13, i11, i12, f13, f11, f12), InterpQuintic), Lerp(GradCoord(seed, i10, i14, i12, f10, f14, f12), GradCoord(seed, i13, i14, i12, f13, f14, f12), InterpQuintic), InterpQuintic2), Lerp(Lerp(GradCoord(seed, i10, i11, i15, f10, f11, f15), GradCoord(seed, i13, i11, i15, f13, f11, f15), InterpQuintic), Lerp(GradCoord(seed, i10, i14, i15, f10, f14, f15), GradCoord(seed, i13, i14, i15, f13, f14, f15), InterpQuintic), InterpQuintic2), InterpQuintic3) * 0.9649214f;
    }

    private float SingleValue(int seed, float x10, float y10, float z10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        int FastFloor3 = FastFloor(z10);
        float InterpHermite = InterpHermite(x10 - FastFloor);
        float InterpHermite2 = InterpHermite(y10 - FastFloor2);
        float InterpHermite3 = InterpHermite(z10 - FastFloor3);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = FastFloor3 * PrimeZ;
        int i13 = PrimeX + i10;
        int i14 = PrimeY + i11;
        int i15 = PrimeZ + i12;
        return Lerp(Lerp(Lerp(ValCoord(seed, i10, i11, i12), ValCoord(seed, i13, i11, i12), InterpHermite), Lerp(ValCoord(seed, i10, i14, i12), ValCoord(seed, i13, i14, i12), InterpHermite), InterpHermite2), Lerp(Lerp(ValCoord(seed, i10, i11, i15), ValCoord(seed, i13, i11, i15), InterpHermite), Lerp(ValCoord(seed, i10, i14, i15), ValCoord(seed, i13, i14, i15), InterpHermite), InterpHermite2), InterpHermite3);
    }

    private float SingleValueCubic(int seed, float x10, float y10, float z10) {
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        int FastFloor3 = FastFloor(z10);
        float f10 = x10 - FastFloor;
        float f11 = y10 - FastFloor2;
        float f12 = z10 - FastFloor3;
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = FastFloor3 * PrimeZ;
        int i13 = i10 - PrimeX;
        int i14 = i11 - PrimeY;
        int i15 = i12 - PrimeZ;
        int i16 = PrimeX + i10;
        int i17 = PrimeY + i11;
        int i18 = PrimeZ + i12;
        int i19 = 1002250642 + i10;
        int i20 = (-2021106534) + i11;
        int i21 = (-854139810) + i12;
        return CubicLerp(CubicLerp(CubicLerp(ValCoord(seed, i13, i14, i15), ValCoord(seed, i10, i14, i15), ValCoord(seed, i16, i14, i15), ValCoord(seed, i19, i14, i15), f10), CubicLerp(ValCoord(seed, i13, i11, i15), ValCoord(seed, i10, i11, i15), ValCoord(seed, i16, i11, i15), ValCoord(seed, i19, i11, i15), f10), CubicLerp(ValCoord(seed, i13, i17, i15), ValCoord(seed, i10, i17, i15), ValCoord(seed, i16, i17, i15), ValCoord(seed, i19, i17, i15), f10), CubicLerp(ValCoord(seed, i13, i20, i15), ValCoord(seed, i10, i20, i15), ValCoord(seed, i16, i20, i15), ValCoord(seed, i19, i20, i15), f10), f11), CubicLerp(CubicLerp(ValCoord(seed, i13, i14, i12), ValCoord(seed, i10, i14, i12), ValCoord(seed, i16, i14, i12), ValCoord(seed, i19, i14, i12), f10), CubicLerp(ValCoord(seed, i13, i11, i12), ValCoord(seed, i10, i11, i12), ValCoord(seed, i16, i11, i12), ValCoord(seed, i19, i11, i12), f10), CubicLerp(ValCoord(seed, i13, i17, i12), ValCoord(seed, i10, i17, i12), ValCoord(seed, i16, i17, i12), ValCoord(seed, i19, i17, i12), f10), CubicLerp(ValCoord(seed, i13, i20, i12), ValCoord(seed, i10, i20, i12), ValCoord(seed, i16, i20, i12), ValCoord(seed, i19, i20, i12), f10), f11), CubicLerp(CubicLerp(ValCoord(seed, i13, i14, i18), ValCoord(seed, i10, i14, i18), ValCoord(seed, i16, i14, i18), ValCoord(seed, i19, i14, i18), f10), CubicLerp(ValCoord(seed, i13, i11, i18), ValCoord(seed, i10, i11, i18), ValCoord(seed, i16, i11, i18), ValCoord(seed, i19, i11, i18), f10), CubicLerp(ValCoord(seed, i13, i17, i18), ValCoord(seed, i10, i17, i18), ValCoord(seed, i16, i17, i18), ValCoord(seed, i19, i17, i18), f10), CubicLerp(ValCoord(seed, i13, i20, i18), ValCoord(seed, i10, i20, i18), ValCoord(seed, i16, i20, i18), ValCoord(seed, i19, i20, i18), f10), f11), CubicLerp(CubicLerp(ValCoord(seed, i13, i14, i21), ValCoord(seed, i10, i14, i21), ValCoord(seed, i16, i14, i21), ValCoord(seed, i19, i14, i21), f10), CubicLerp(ValCoord(seed, i13, i11, i21), ValCoord(seed, i10, i11, i21), ValCoord(seed, i16, i11, i21), ValCoord(seed, i19, i11, i21), f10), CubicLerp(ValCoord(seed, i13, i17, i21), ValCoord(seed, i10, i17, i21), ValCoord(seed, i16, i17, i21), ValCoord(seed, i19, i17, i21), f10), CubicLerp(ValCoord(seed, i13, i20, i21), ValCoord(seed, i10, i20, i21), ValCoord(seed, i16, i20, i21), ValCoord(seed, i19, i20, i21), f10), f11), f12) * 0.2962963f;
    }

    public float GetNoise(float x10, float y10, float z10) {
        float f10 = this.mFrequency;
        float f11 = x10 * f10;
        float f12 = y10 * f10;
        float f13 = z10 * f10;
        int ordinal = this.mTransformType3D.ordinal();
        if (ordinal == 1) {
            float f14 = f11 + f12;
            float f15 = (-0.21132487f) * f14;
            float f16 = f13 * 0.57735026f;
            f11 += f15 - f16;
            f12 = (f12 + f15) - f16;
            f13 = f16 + (f14 * 0.57735026f);
        } else if (ordinal == 2) {
            float f17 = f11 + f13;
            float f18 = f12 * 0.57735026f;
            float f19 = ((-0.21132487f) * f17) - f18;
            f11 += f19;
            f13 += f19;
            f12 = f18 + (f17 * 0.57735026f);
        } else if (ordinal == 3) {
            float f20 = (f11 + f12 + f13) * 0.6666667f;
            f11 = f20 - f11;
            f12 = f20 - f12;
            f13 = f20 - f13;
        }
        int ordinal2 = this.mFractalType.ordinal();
        if (ordinal2 == 1) {
            return GenFractalFBm(f11, f12, f13);
        }
        if (ordinal2 == 2) {
            return GenFractalRidged(f11, f12, f13);
        }
        if (ordinal2 != 3) {
            return GenNoiseSingle(this.mSeed, f11, f12, f13);
        }
        return GenFractalPingPong(f11, f12, f13);
    }

    private void DomainWarpFractalIndependent(b coord) {
        float f10 = coord.f79770a;
        float f11 = coord.f79771b;
        float f12 = coord.f79772c;
        int ordinal = this.mWarpTransformType3D.ordinal();
        if (ordinal == 1) {
            float f13 = f10 + f11;
            float f14 = (-0.21132487f) * f13;
            float f15 = f12 * 0.57735026f;
            f10 += f14 - f15;
            f11 = (f11 + f14) - f15;
            f12 = f15 + (f13 * 0.57735026f);
        } else if (ordinal == 2) {
            float f16 = f10 + f12;
            float f17 = f11 * 0.57735026f;
            float f18 = ((-0.21132487f) * f16) - f17;
            f10 += f18;
            f12 += f18;
            f11 = f17 + (f16 * 0.57735026f);
        } else if (ordinal == 3) {
            float f19 = (f10 + f11 + f12) * 0.6666667f;
            f10 = f19 - f10;
            f11 = f19 - f11;
            f12 = f19 - f12;
        }
        float f20 = f10;
        float f21 = f11;
        float f22 = f12;
        int i10 = this.mSeed;
        float f23 = this.mDomainWarpAmp * this.mFractalBounding;
        float f24 = this.mFrequency;
        for (int i11 = 0; i11 < this.mOctaves; i11++) {
            DoSingleDomainWarp(i10, f23, f24, f20, f21, f22, coord);
            i10++;
            f23 *= this.mGain;
            f24 *= this.mLacunarity;
        }
    }

    private void DomainWarpFractalProgressive(b coord) {
        float f10;
        float f11;
        float f12;
        int i10 = this.mSeed;
        float f13 = this.mDomainWarpAmp * this.mFractalBounding;
        float f14 = this.mFrequency;
        for (int i11 = 0; i11 < this.mOctaves; i11++) {
            float f15 = coord.f79770a;
            float f16 = coord.f79771b;
            float f17 = coord.f79772c;
            int ordinal = this.mWarpTransformType3D.ordinal();
            if (ordinal == 1) {
                float f18 = f15 + f16;
                float f19 = (-0.21132487f) * f18;
                float f20 = f17 * 0.57735026f;
                f15 += f19 - f20;
                f16 = (f16 + f19) - f20;
                f17 = f20 + (f18 * 0.57735026f);
            } else if (ordinal == 2) {
                float f21 = f15 + f17;
                float f22 = f16 * 0.57735026f;
                float f23 = ((-0.21132487f) * f21) - f22;
                f15 += f23;
                f17 += f23;
                f16 = f22 + (f21 * 0.57735026f);
            } else if (ordinal == 3) {
                float f24 = (f15 + f16 + f17) * 0.6666667f;
                f12 = f24 - f15;
                f11 = f24 - f16;
                f10 = f24 - f17;
                DoSingleDomainWarp(i10, f13, f14, f12, f11, f10, coord);
                i10++;
                f13 *= this.mGain;
                f14 *= this.mLacunarity;
            }
            f12 = f15;
            f11 = f16;
            f10 = f17;
            DoSingleDomainWarp(i10, f13, f14, f12, f11, f10, coord);
            i10++;
            f13 *= this.mGain;
            f14 *= this.mLacunarity;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float SingleOpenSimplex2S(int seed, float x10, float y10, float z10) {
        int i10;
        float f10;
        float f11;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f12;
        int i16;
        float f13;
        int i17;
        boolean z11;
        boolean z12;
        float f14;
        int FastFloor = FastFloor(x10);
        int FastFloor2 = FastFloor(y10);
        int FastFloor3 = FastFloor(z10);
        float f15 = x10 - FastFloor;
        float f16 = y10 - FastFloor2;
        float f17 = z10 - FastFloor3;
        int i18 = FastFloor * PrimeX;
        int i19 = FastFloor2 * PrimeY;
        int i20 = FastFloor3 * PrimeZ;
        int i21 = seed + 1293373;
        int i22 = (int) ((-0.5f) - f15);
        int i23 = (int) ((-0.5f) - f16);
        int i24 = (int) ((-0.5f) - f17);
        float f18 = f15 + i22;
        float f19 = f16 + i23;
        float f20 = f17 + i24;
        float f21 = ((0.75f - (f18 * f18)) - (f19 * f19)) - (f20 * f20);
        float f22 = f21 * f21;
        int i25 = i18 + (i22 & PrimeX);
        int i26 = i19 + (i23 & PrimeY);
        int i27 = i20 + (i24 & PrimeZ);
        float GradCoord = f22 * f22 * GradCoord(seed, i25, i26, i27, f18, f19, f20);
        float f23 = f15 - 0.5f;
        float f24 = f16 - 0.5f;
        float f25 = f17 - 0.5f;
        float f26 = ((0.75f - (f23 * f23)) - (f24 * f24)) - (f25 * f25);
        float f27 = f26 * f26;
        int i28 = i18 + PrimeX;
        int i29 = i19 + PrimeY;
        int i30 = i20 + PrimeZ;
        float GradCoord2 = GradCoord + (f27 * f27 * GradCoord(i21, i28, i29, i30, f23, f24, f25));
        int i31 = i22 | 1;
        float f28 = (i31 << 1) * f23;
        int i32 = i23 | 1;
        float f29 = (i32 << 1) * f24;
        int i33 = i24 | 1;
        float f30 = (i33 << 1) * f25;
        float f31 = (((-2) - (i22 << 2)) * f23) - 1.0f;
        float f32 = (((-2) - (i23 << 2)) * f24) - 1.0f;
        float f33 = (((-2) - (i24 << 2)) * f25) - 1.0f;
        float f34 = f28 + f21;
        boolean z13 = true;
        if (f34 > 0.0f) {
            float f35 = f34 * f34;
            int i34 = i18 + ((~i22) & PrimeX);
            f11 = f32;
            i15 = i33;
            f12 = f25;
            i16 = i24;
            f10 = f24;
            i12 = i32;
            i11 = i21;
            i13 = i23;
            i10 = i18;
            i14 = i31;
            GradCoord2 += f35 * f35 * GradCoord(seed, i34, i26, i27, f18 - i31, f19, f20);
            f13 = f31;
            z11 = false;
            i17 = i22;
        } else {
            i10 = i18;
            f10 = f24;
            f11 = f32;
            i11 = i21;
            i12 = i32;
            i13 = i23;
            i14 = i31;
            i15 = i33;
            f12 = f25;
            i16 = i24;
            float f36 = f29 + f30 + f21;
            if (f36 > 0.0f) {
                float f37 = f36 * f36;
                GradCoord2 += f37 * f37 * GradCoord(seed, i25, i19 + ((~i13) & PrimeY), i20 + ((~i16) & PrimeZ), f18, f19 - i12, f20 - i15);
            }
            float f38 = f31 + f26;
            if (f38 > 0.0f) {
                float f39 = f38 * f38;
                f13 = f31;
                i17 = i22;
                GradCoord2 += f39 * f39 * GradCoord(i11, i10 + (i22 & 1002250642), i29, i30, i14 + f23, f10, f12);
                z11 = true;
            } else {
                f13 = f31;
                i17 = i22;
                z11 = false;
            }
        }
        float f40 = f29 + f21;
        if (f40 > 0.0f) {
            float f41 = f40 * f40;
            GradCoord2 += f41 * f41 * GradCoord(seed, i25, i19 + ((~i13) & PrimeY), i27, f18, f19 - i12, f20);
        } else {
            float f42 = f28 + f30 + f21;
            if (f42 > 0.0f) {
                float f43 = f42 * f42;
                GradCoord2 += f43 * f43 * GradCoord(seed, i10 + ((~i17) & PrimeX), i26, i20 + ((~i16) & PrimeZ), f18 - i14, f19, f20 - i15);
            }
            float f44 = f11 + f26;
            if (f44 > 0.0f) {
                float f45 = f44 * f44;
                GradCoord2 += f45 * f45 * GradCoord(i11, i28, i19 + (i13 & (-2021106534)), i30, f23, i12 + f10, f12);
                z12 = true;
                f14 = f30 + f21;
                if (f14 <= 0.0f) {
                    float f46 = f14 * f14;
                    GradCoord2 += f46 * f46 * GradCoord(seed, i25, i26, i20 + ((~i16) & PrimeZ), f18, f19, f20 - i15);
                } else {
                    float f47 = f28 + f29 + f21;
                    if (f47 > 0.0f) {
                        float f48 = f47 * f47;
                        GradCoord2 += f48 * f48 * GradCoord(seed, i10 + ((~i17) & PrimeX), i19 + ((~i13) & PrimeY), i27, f18 - i14, f19 - i12, f20);
                    }
                    float f49 = f33 + f26;
                    if (f49 > 0.0f) {
                        float f50 = f49 * f49;
                        GradCoord2 += f50 * f50 * GradCoord(i11, i28, i29, i20 + (i16 & (-854139810)), f23, f10, i15 + f12);
                        if (!z11) {
                            float f51 = f11 + f33 + f26;
                            if (f51 > 0.0f) {
                                float f52 = f51 * f51;
                                GradCoord2 += f52 * f52 * GradCoord(i11, i28, i19 + (i13 & (-2021106534)), i20 + (i16 & (-854139810)), f23, i12 + f10, i15 + f12);
                            }
                        }
                        if (!z12) {
                            float f53 = f13 + f33 + f26;
                            if (f53 > 0.0f) {
                                float f54 = f53 * f53;
                                GradCoord2 += f54 * f54 * GradCoord(i11, i10 + (i17 & 1002250642), i29, i20 + (i16 & (-854139810)), i14 + f23, f10, i15 + f12);
                            }
                        }
                        if (!z13) {
                            float f55 = f13 + f11 + f26;
                            if (f55 > 0.0f) {
                                float f56 = f55 * f55;
                                GradCoord2 += f56 * f56 * GradCoord(i11, i10 + (i17 & 1002250642), i19 + (i13 & (-2021106534)), i30, i14 + f23, i12 + f10, f12);
                            }
                        }
                        return GradCoord2 * 9.046026f;
                    }
                }
                z13 = false;
                if (!z11) {
                }
                if (!z12) {
                }
                if (!z13) {
                }
                return GradCoord2 * 9.046026f;
            }
        }
        z12 = false;
        f14 = f30 + f21;
        if (f14 <= 0.0f) {
        }
        z13 = false;
        if (!z11) {
        }
        if (!z12) {
        }
        if (!z13) {
        }
        return GradCoord2 * 9.046026f;
    }

    private void SingleDomainWarpBasicGrid(int seed, float warpAmp, float frequency, float x10, float y10, float z10, b coord) {
        float f10 = x10 * frequency;
        float f11 = y10 * frequency;
        float f12 = z10 * frequency;
        int FastFloor = FastFloor(f10);
        int FastFloor2 = FastFloor(f11);
        int FastFloor3 = FastFloor(f12);
        float InterpHermite = InterpHermite(f10 - FastFloor);
        float InterpHermite2 = InterpHermite(f11 - FastFloor2);
        float InterpHermite3 = InterpHermite(f12 - FastFloor3);
        int i10 = FastFloor * PrimeX;
        int i11 = FastFloor2 * PrimeY;
        int i12 = FastFloor3 * PrimeZ;
        int i13 = PrimeX + i10;
        int i14 = PrimeY + i11;
        int i15 = PrimeZ + i12;
        int Hash = Hash(seed, i10, i11, i12) & 1020;
        int Hash2 = Hash(seed, i13, i11, i12) & 1020;
        float[] fArr = RandVecs3D;
        float Lerp = Lerp(fArr[Hash], fArr[Hash2], InterpHermite);
        float Lerp2 = Lerp(fArr[Hash | 1], fArr[Hash2 | 1], InterpHermite);
        float Lerp3 = Lerp(fArr[Hash | 2], fArr[Hash2 | 2], InterpHermite);
        int Hash3 = Hash(seed, i10, i14, i12) & 1020;
        int Hash4 = Hash(seed, i13, i14, i12) & 1020;
        float Lerp4 = Lerp(fArr[Hash3], fArr[Hash4], InterpHermite);
        float Lerp5 = Lerp(fArr[Hash3 | 1], fArr[Hash4 | 1], InterpHermite);
        float Lerp6 = Lerp(fArr[Hash3 | 2], fArr[Hash4 | 2], InterpHermite);
        float Lerp7 = Lerp(Lerp, Lerp4, InterpHermite2);
        float Lerp8 = Lerp(Lerp2, Lerp5, InterpHermite2);
        float Lerp9 = Lerp(Lerp3, Lerp6, InterpHermite2);
        int Hash5 = Hash(seed, i10, i11, i15) & 1020;
        int Hash6 = Hash(seed, i13, i11, i15) & 1020;
        float Lerp10 = Lerp(fArr[Hash5], fArr[Hash6], InterpHermite);
        float Lerp11 = Lerp(fArr[Hash5 | 1], fArr[Hash6 | 1], InterpHermite);
        float Lerp12 = Lerp(fArr[Hash5 | 2], fArr[Hash6 | 2], InterpHermite);
        int Hash7 = Hash(seed, i10, i14, i15) & 1020;
        int Hash8 = Hash(seed, i13, i14, i15) & 1020;
        float Lerp13 = Lerp(fArr[Hash7], fArr[Hash8], InterpHermite);
        float Lerp14 = Lerp(fArr[Hash7 | 1], fArr[Hash8 | 1], InterpHermite);
        float Lerp15 = Lerp(fArr[Hash7 | 2], fArr[Hash8 | 2], InterpHermite);
        coord.f79770a += Lerp(Lerp7, Lerp(Lerp10, Lerp13, InterpHermite2), InterpHermite3) * warpAmp;
        coord.f79771b += Lerp(Lerp8, Lerp(Lerp11, Lerp14, InterpHermite2), InterpHermite3) * warpAmp;
        coord.f79772c += Lerp(Lerp9, Lerp(Lerp12, Lerp15, InterpHermite2), InterpHermite3) * warpAmp;
    }

    public FastNoiseLite(int seed) {
        TransformType3D transformType3D = TransformType3D.DefaultOpenSimplex2;
        this.mTransformType3D = transformType3D;
        this.mFractalType = FractalType.None;
        this.mOctaves = 3;
        this.mLacunarity = 2.0f;
        this.mGain = 0.5f;
        this.mWeightedStrength = 0.0f;
        this.mPingPongStrength = 2.0f;
        this.mFractalBounding = 0.5714286f;
        this.mCellularDistanceFunction = CellularDistanceFunction.EuclideanSq;
        this.mCellularReturnType = CellularReturnType.Distance;
        this.mCellularJitterModifier = 1.0f;
        this.mDomainWarpType = DomainWarpType.OpenSimplex2;
        this.mWarpTransformType3D = transformType3D;
        this.mDomainWarpAmp = 1.0f;
        SetSeed(seed);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x023a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float SingleCellular(int seed, float x10, float y10, float z10) {
        float f10;
        FastNoiseLite fastNoiseLite;
        int i10 = seed;
        int FastRound = FastRound(x10);
        int FastRound2 = FastRound(y10);
        int FastRound3 = FastRound(z10);
        float f11 = this.mCellularJitterModifier * 0.39614353f;
        int i11 = FastRound - 1;
        int i12 = i11 * PrimeX;
        int i13 = FastRound2 - 1;
        int i14 = i13 * PrimeY;
        int i15 = FastRound3 - 1;
        int i16 = i15 * PrimeZ;
        int ordinal = this.mCellularDistanceFunction.ordinal();
        float f12 = Float.MAX_VALUE;
        int i17 = 0;
        if (ordinal == 0 || ordinal == 1) {
            f10 = Float.MAX_VALUE;
            while (i11 <= FastRound + 1) {
                int i18 = i13;
                int i19 = i14;
                while (i18 <= FastRound2 + 1) {
                    float f13 = f12;
                    int i20 = i15;
                    int i21 = i16;
                    while (i20 <= FastRound3 + 1) {
                        int Hash = Hash(seed, i12, i19, i21);
                        int i22 = Hash & 1020;
                        float[] fArr = RandVecs3D;
                        float f14 = (i11 - x10) + (fArr[i22] * f11);
                        int i23 = FastRound;
                        float f15 = (i18 - y10) + (fArr[i22 | 1] * f11);
                        int i24 = FastRound2;
                        float f16 = (i20 - z10) + (fArr[i22 | 2] * f11);
                        float f17 = (f14 * f14) + (f15 * f15) + (f16 * f16);
                        f10 = FastMax(FastMin(f10, f17), f13);
                        if (f17 < f13) {
                            f13 = f17;
                            i17 = Hash;
                        }
                        i21 += PrimeZ;
                        i20++;
                        FastRound = i23;
                        FastRound2 = i24;
                    }
                    i19 += PrimeY;
                    i18++;
                    f12 = f13;
                    FastRound = FastRound;
                }
                i12 += PrimeX;
                i11++;
                FastRound = FastRound;
                FastRound2 = FastRound2;
            }
        } else {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    fastNoiseLite = this;
                    f10 = Float.MAX_VALUE;
                } else {
                    float f18 = Float.MAX_VALUE;
                    while (i11 <= FastRound + 1) {
                        int i25 = i13;
                        int i26 = i14;
                        while (i25 <= FastRound2 + 1) {
                            int i27 = i14;
                            int i28 = i15;
                            int i29 = i16;
                            float f19 = f12;
                            while (i28 <= FastRound3 + 1) {
                                int Hash2 = Hash(i10, i12, i26, i29);
                                int i30 = Hash2 & 1020;
                                float[] fArr2 = RandVecs3D;
                                float f20 = (i11 - x10) + (fArr2[i30] * f11);
                                float f21 = (i25 - y10) + (fArr2[i30 | 1] * f11);
                                float f22 = (i28 - z10) + (fArr2[i30 | 2] * f11);
                                float FastAbs = FastAbs(f20) + FastAbs(f21) + FastAbs(f22) + (f20 * f20) + (f21 * f21) + (f22 * f22);
                                f18 = FastMax(FastMin(f18, FastAbs), f19);
                                if (FastAbs < f19) {
                                    f19 = FastAbs;
                                    i17 = Hash2;
                                }
                                i29 += PrimeZ;
                                i28++;
                                i10 = seed;
                            }
                            i26 += PrimeY;
                            i25++;
                            i10 = seed;
                            f12 = f19;
                            i14 = i27;
                            i15 = i28;
                            i16 = i29;
                        }
                        i12 += PrimeX;
                        i11++;
                        i10 = seed;
                        i13 = i25;
                    }
                    fastNoiseLite = this;
                    f10 = f18;
                }
                int i31 = i17;
                if (fastNoiseLite.mCellularDistanceFunction == CellularDistanceFunction.Euclidean && fastNoiseLite.mCellularReturnType != CellularReturnType.CellValue) {
                    f12 = FastSqrt(f12);
                    if (fastNoiseLite.mCellularReturnType != CellularReturnType.Distance) {
                        f10 = FastSqrt(f10);
                    }
                }
                switch (fastNoiseLite.mCellularReturnType) {
                    case null:
                        return i31 * 4.656613E-10f;
                    case 1:
                        return f12 - 1.0f;
                    case 2:
                        return f10 - 1.0f;
                    case 3:
                        return ((f10 + f12) * 0.5f) - 1.0f;
                    case 4:
                        return (f10 - f12) - 1.0f;
                    case 5:
                        return ((f10 * f12) * 0.5f) - 1.0f;
                    case 6:
                        return (f12 / f10) - 1.0f;
                    default:
                        return 0.0f;
                }
            }
            f10 = Float.MAX_VALUE;
            while (i11 <= FastRound + 1) {
                int i32 = i13;
                int i33 = i14;
                while (i32 <= FastRound2 + 1) {
                    float f23 = f12;
                    int i34 = i16;
                    for (int i35 = i15; i35 <= FastRound3 + 1; i35++) {
                        int Hash3 = Hash(seed, i12, i33, i34);
                        int i36 = Hash3 & 1020;
                        float[] fArr3 = RandVecs3D;
                        float FastAbs2 = FastAbs((i11 - x10) + (fArr3[i36] * f11)) + FastAbs((i32 - y10) + (fArr3[i36 | 1] * f11)) + FastAbs((i35 - z10) + (fArr3[i36 | 2] * f11));
                        f10 = FastMax(FastMin(f10, FastAbs2), f23);
                        if (FastAbs2 < f23) {
                            f23 = FastAbs2;
                            i17 = Hash3;
                        }
                        i34 += PrimeZ;
                    }
                    i33 += PrimeY;
                    i32++;
                    f12 = f23;
                }
                i12 += PrimeX;
                i11++;
            }
        }
        fastNoiseLite = this;
        int i312 = i17;
        if (fastNoiseLite.mCellularDistanceFunction == CellularDistanceFunction.Euclidean) {
            f12 = FastSqrt(f12);
            if (fastNoiseLite.mCellularReturnType != CellularReturnType.Distance) {
            }
        }
        switch (fastNoiseLite.mCellularReturnType) {
        }
    }
}
