.class public final Lcom/android/tools/r8/internal/lx0;
.super Lcom/android/tools/r8/internal/aW;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/aW;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
