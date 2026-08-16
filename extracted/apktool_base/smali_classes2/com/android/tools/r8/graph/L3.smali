.class public final Lcom/android/tools/r8/graph/L3;
.super Lcom/android/tools/r8/graph/H3$e;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/graph/L3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/L3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L3;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/L3;->b:Lcom/android/tools/r8/graph/L3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/H3$e;-><init>(Lcom/android/tools/r8/graph/H3$k;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should not be called"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
