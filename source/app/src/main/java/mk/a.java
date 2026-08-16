package Mk;

import Sg.b;
import Tj.d;
import b2.AbstractC3834c;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.math.BigInteger;
import oh.C14539s;
import yk.C16204f;

public class a {

    public static final C16204f.b f15363A;

    public static final C16204f.b f15364B;

    public static final C16204f.b f15365C;

    public static final C16204f.b f15366D;

    public static final C16204f.b f15367E;

    public static final C16204f.b f15368F;

    public static final C16204f.b f15369G;

    public static final C16204f.b f15370H;

    public static final C16204f.b f15371I;

    public static final C16204f.b f15372J;

    public static final C16204f.b f15373K;

    public static final C16204f.b f15374L;

    public static final C16204f.b f15375M;

    public static final C16204f.b f15376N;

    public static final C16204f.b f15377O;

    public static final C16204f.b f15378P;

    public static final C16204f.b f15379Q;

    public static final C16204f.b f15380R;

    public static final C16204f.b f15381S;

    public static final C16204f.b f15382T;

    public static final C16204f.b f15383U;

    public static final C16204f.b f15384V;

    public static final C16204f.b f15385W;

    public static final C16204f.b f15386X;

    public static final C16204f.b f15387Y;

    public static final C16204f.b f15388Z;

    public static final C16204f.b f15389a = C16204f.n(0, 7).z("UINT3");

    public static final C16204f.b f15390a0;

    public static final C16204f.b f15391b;

    public static final C16204f.b f15392b0;

    public static final C16204f.b f15393c;

    public static final C16204f.b f15394c0;

    public static final C16204f.b f15395d;

    public static final C16204f.b f15396d0;

    public static final C16204f.b f15397e;

    public static final C16204f.b f15398e0;

    public static final C16204f.b f15399f;

    public static final C16204f.b f15400f0;

    public static final C16204f.b f15401g;

    public static final C16204f.b f15402g0;

    public static final C16204f.b f15403h;

    public static final C16204f.b f15404h0;

    public static final C16204f.b f15405i;

    public static final C16204f.b f15406i0;

    public static final C16204f.b f15407j;

    public static final C16204f.b f15408j0;

    public static final C16204f.b f15409k;

    public static final C16204f.b f15410k0;

    public static final C16204f.b f15411l;

    public static final C16204f.b f15412l0;

    public static final C16204f.b f15413m;

    public static final C16204f.b f15414m0;

    public static final C16204f.b f15415n;

    public static final C16204f.b f15416n0;

    public static final C16204f.b f15417o;

    public static final C16204f.b f15418o0;

    public static final C16204f.b f15419p;

    public static final C16204f.b f15420p0;

    public static final C16204f.b f15421q;

    public static final C16204f.b f15422q0;

    public static final C16204f.b f15423r;

    public static final C16204f.b f15424r0;

    public static final C16204f.b f15425s;

    public static final C16204f.b f15426s0;

    public static final C16204f.b f15427t;

    public static final C16204f.b f15428t0;

    public static final C16204f.b f15429u;

    public static final C16204f.b f15430u0;

    public static final C16204f.b f15431v;

    public static final C16204f.b f15432v0;

    public static final C16204f.b f15433w;

    public static final C16204f.b f15434x;

    public static final C16204f.b f15435y;

    public static final C16204f.b f15436z;

    static {
        C16204f.b z10 = C16204f.n(0L, 255L).z("UINT8");
        f15391b = z10;
        C16204f.b z11 = C16204f.n(0L, b.f23266s).z("UINT16");
        f15393c = z11;
        C16204f.b z12 = C16204f.n(0L, 4294967295L).z("UINT32");
        f15395d = z12;
        C16204f.b z13 = C16204f.p(BigInteger.ZERO, new BigInteger("18446744073709551615")).z("UINT64");
        f15397e = z13;
        C16204f.b z14 = C16204f.z(z11).z("SequenceOfUint16");
        f15399f = z14;
        C16204f.b z15 = C16204f.z(z10).z("SequenceOfUint8");
        f15401g = z15;
        C16204f.b z16 = C16204f.s(3).z("HashedId3");
        f15403h = z16;
        C16204f.b z17 = C16204f.s(8).z("HashedId8");
        f15405i = z17;
        f15407j = C16204f.s(10).z("HashedId10");
        f15409k = C16204f.s(32).z("HashedId32");
        f15411l = C16204f.z(z16).z("SequenceOfHashedId3");
        f15413m = C16204f.z(z17).z("SequenceOfHashedId8");
        C16204f.b z18 = z12.z("Time32");
        f15415n = z18;
        f15417o = z13.z("Time64");
        C16204f.b z19 = C16204f.d(z11.q("microseconds"), z11.q("milliseconds"), z11.q("seconds"), z11.q("minutes"), z11.q("hours"), z11.q("sixtyHours"), z11.q("years")).z("Duration");
        f15419p = z19;
        f15421q = C16204f.y(z18.q("start"), z19.q("duration")).z("ValidityPeriod");
        f15423r = z11.g().z("IValue");
        f15425s = C16204f.C(0, 255).z("Hostname");
        f15427t = C16204f.s(9).z("LinkageValue");
        f15429u = C16204f.y(C16204f.s(4).q("jValue"), C16204f.s(9).q("value")).z("GroupLinkageValue");
        f15431v = C16204f.s(2).z("LaId");
        f15433w = C16204f.s(16).z("LinkageSeed");
        C16204f.b z20 = C16204f.y(C16204f.s(32).q("x"), C16204f.s(32).q("y")).z("Point256");
        f15434x = z20;
        C16204f.b z21 = C16204f.d(C16204f.s(32).q("x-only"), C16204f.q().q("fill"), C16204f.s(32).q("compressed-y-0"), C16204f.s(32).q("compressed-y-1"), z20.q("uncompressedP256")).z("EccP256CurvePoint");
        f15435y = z21;
        C16204f.b z22 = C16204f.y(z21.q("rSig"), C16204f.s(32).q("sSig")).z("EcdsaP256Signature");
        f15436z = z22;
        C16204f.b z23 = C16204f.y(C16204f.s(48).q("x"), C16204f.s(48).q("y")).z("Point384");
        f15363A = z23;
        C16204f.b z24 = C16204f.d(C16204f.s(48).q("x-only"), C16204f.q().q("fill"), C16204f.s(48).q("compressed-y-0"), C16204f.s(48).q("compressed-y-1"), z23.q("uncompressedP384")).z("EccP384CurvePoint");
        f15364B = z24;
        C16204f.b z25 = C16204f.y(z24.q("rSig"), C16204f.s(48).q("sSig")).z("EcdsaP384Signature");
        f15365C = z25;
        f15366D = C16204f.d(z22.q("ecdsaNistP256Signature"), z22.q("ecdsaBrainpoolP256r1Signature"), C16204f.j(z25.q("ecdsaBrainpoolP384r1Signature"))).z("Signature");
        C16204f.b z26 = C16204f.h(C16204f.f("aes128Ccm"), C16204f.j(new Object[0])).z("SymmAlgorithm");
        f15367E = z26;
        f15368F = C16204f.h(C16204f.f("sha256"), C16204f.j(C16204f.f("sha384"))).z("HashAlgorithm");
        f15369G = C16204f.y(z21.g().q("v"), C16204f.s(16).q(AbstractC3834c.f32824b1), C16204f.s(16).q("t")).z("EciesP256EncryptedKey");
        C16204f.b z27 = C16204f.d(z21.q("eciesNistP256"), z21.q("eciesBrainpoolP256r1"), C16204f.j(new Object[0])).z("BasePublicEncryptionKey");
        f15370H = z27;
        C16204f.b z28 = C16204f.d(C16204f.s(16).q("aes128Ccm"), C16204f.j(new Object[0])).z("SymmetricEncryptionKey");
        f15371I = z28;
        C16204f.b z29 = C16204f.y(z26.q("supportedSymmAlg"), z27.q("publicKey")).z("PublicEncryptionKey");
        f15372J = z29;
        f15373K = C16204f.d(z29.q("publicOption"), z28.q("symmetric")).z("EncryptionKey");
        f15374L = C16204f.d(z21.q("ecdsaNistP256"), z21.q("ecdsaBrainpoolP256r1"), C16204f.j(z24.q("ecdsaBrainpoolP384r1"))).z("PublicVerificationKey");
        C16204f.b z30 = C16204f.l().w(0L).z("Psid");
        f15375M = z30;
        C16204f.b z31 = C16204f.t(0, 31).z("BitmapSsp");
        f15376N = z31;
        C16204f.b z32 = C16204f.d(C16204f.r().A().q("opaque"), C16204f.j(z31)).z("ServiceSpecificPermissions");
        f15377O = z32;
        C16204f.b z33 = C16204f.y(z30.q("psid"), C16204f.v(z32.q("ssp"))).z("PsidSsp");
        f15378P = z33;
        f15379Q = C16204f.z(z33).z("SequenceOfPsidSsp");
        f15380R = C16204f.z(z30).z("SequenceOfPsid");
        C16204f.b z34 = C16204f.z(C16204f.r().w(0L)).z("SequenceOfOctetString");
        f15381S = z34;
        C16204f.b z35 = C16204f.y(C16204f.t(1, 32).q("sspValue"), C16204f.t(1, 32).q("sspBitMask")).z("BitmapSspRange");
        f15382T = z35;
        C16204f.b z36 = C16204f.d(z34.q("opaque"), C16204f.q().q(d.f25405q), C16204f.j(z35.q("bitmapSspRange"))).z("SspRange");
        f15383U = z36;
        C16204f.b z37 = C16204f.y(z30.q("psid"), C16204f.v(z36.q("sspRange"))).z("PsidSspRange");
        f15384V = z37;
        f15385W = C16204f.z(z37).z("SequenceOfPsidSspRange");
        f15386X = C16204f.s(1).z("SubjectAssurance");
        f15387Y = z11.z("CrlSeries");
        C16204f.b z38 = z11.z("CountryOnly");
        f15388Z = z38;
        C16204f.b z39 = C16204f.y(z38.q("countryOnly"), z15.q("regions")).z("CountryAndRegions");
        f15390a0 = z39;
        C16204f.b z40 = C16204f.y(z10.q("region"), z14.q("subregions")).z("RegionAndSubregions");
        f15392b0 = z40;
        C16204f.b z41 = C16204f.z(z40).z("SequenceOfRegionAndSubregions");
        f15394c0 = z41;
        C16204f.b z42 = C16204f.y(z38.q("country"), z41.q("regionAndSubregions")).z("CountryAndSubregions");
        f15396d0 = z42;
        C16204f.b z43 = C16204f.d(z38.q("countryOnly"), z39.q("countryAndRegions"), z42.q("countryAndSubregions"), C16204f.j(new Object[0])).z("IdentifiedRegion");
        f15398e0 = z43;
        C16204f.b z44 = C16204f.z(z43).z("SequenceOfIdentifiedRegion");
        f15400f0 = z44;
        C16204f.b z45 = C16204f.n(-1799999999L, 1800000001L).z("OneEightyDegreeInt");
        f15402g0 = z45;
        f15404h0 = z45.g().z("KnownLongitude");
        f15406i0 = C16204f.l().B(new C14539s(1800000001L)).z("UnknownLongitude");
        C16204f.b z46 = C16204f.n(-900000000L, 900000001L).z("NinetyDegreeInt");
        f15408j0 = z46;
        f15410k0 = z46.g().z("KnownLatitude");
        f15412l0 = C16204f.l().B(new C14539s(900000001L)).z("UnknownLatitude");
        C16204f.b z47 = z11.z("Elevation");
        f15414m0 = z47;
        C16204f.b z48 = z45.g().z("Longitude");
        f15416n0 = z48;
        C16204f.b z49 = z46.g().z("Latitude");
        f15418o0 = z49;
        f15420p0 = C16204f.y(z49.q("latitude"), z48.q("longitude"), z47.q("elevation")).z("ThreeDLocation");
        C16204f.b z50 = C16204f.y(z49.q("latitude"), z48.q("longitude")).z("TwoDLocation");
        f15422q0 = z50;
        C16204f.b z51 = C16204f.y(z50.q("northWest"), z50.q("southEast")).z("RectangularRegion");
        f15424r0 = z51;
        C16204f.b z52 = C16204f.z(z51).z("SequenceOfRectangularRegion");
        f15426s0 = z52;
        C16204f.b z53 = C16204f.y(z50.q("center"), z11.q(TestVFXEffect.f77524P)).z("CircularRegion");
        f15428t0 = z53;
        C16204f.b z54 = C16204f.z(z50).w(3L).z("PolygonalRegion");
        f15430u0 = z54;
        f15432v0 = C16204f.d(z53.q("circularRegion"), z52.q("rectangularRegion"), z54.q("polygonalRegion"), z44.q("identifiedRegion"), C16204f.j(new Object[0])).z("GeographicRegion");
    }
}
