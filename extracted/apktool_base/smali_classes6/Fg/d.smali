.class public final LFg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x16

.field public static final b:I = 0xc

.field public static final c:I = 0x10000

.field public static final d:I = 0xa

.field public static final e:I = 0x10

.field public static final f:I = 0xb

.field public static final g:Ljava/lang/String; = "HmacSHA1"

.field public static final h:Ljava/lang/String; = "ISO-8859-1"

.field public static final i:I = 0x3e8

.field public static final j:I = 0x2

.field public static final k:I = 0x10000

.field public static final l:J = 0xffffffffL

.field public static final m:I = 0xffff

.field public static final n:I = 0x1000

.field public static final o:I = 0x200

.field public static final p:I = 0xe

.field public static final q:I = 0x12

.field public static final r:I = 0x16

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String; = "/"

.field public static final u:I = 0xffff

.field public static final v:Ljava/lang/String; = "Cp437"

.field public static final w:Ljava/nio/charset/Charset;

.field public static final x:Ljava/nio/charset/Charset;

.field public static final y:Ljava/lang/String; = ".zip.001"

.field public static final z:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, LFg/d;->s:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, LFg/d;->w:Ljava/nio/charset/Charset;

    sput-object v0, LFg/d;->x:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
