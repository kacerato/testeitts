.class public final Lcom/android/tools/r8/shaking/h1;
.super Lcom/android/tools/r8/shaking/i1;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/shaking/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/h1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/h1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/h1;->a:Lcom/android/tools/r8/shaking/h1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "top"

    return-object v0
.end method
