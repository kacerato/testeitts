.class public final Lh1/E;
.super Lh1/D;
.source "SourceFile"


# static fields
.field public static final b:Lh1/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh1/E;

    invoke-direct {v0}, Lh1/E;-><init>()V

    sput-object v0, Lh1/E;->b:Lh1/F;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lh1/D;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
