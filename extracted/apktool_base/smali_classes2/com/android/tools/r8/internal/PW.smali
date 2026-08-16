.class public final Lcom/android/tools/r8/internal/PW;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QW;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QW;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/PW;->b:Lcom/android/tools/r8/internal/QW;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/PW;->b:Lcom/android/tools/r8/internal/QW;

    iput-object p1, v0, Lcom/android/tools/r8/internal/QW;->l:Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
