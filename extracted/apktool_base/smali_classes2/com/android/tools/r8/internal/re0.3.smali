.class public final Lcom/android/tools/r8/internal/re0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ly;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/se0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/se0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/re0;->b:Lcom/android/tools/r8/internal/se0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Bx0;

    new-instance v1, Lcom/android/tools/r8/internal/qe0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/re0;->b:Lcom/android/tools/r8/internal/se0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/qe0;-><init>(Lcom/android/tools/r8/internal/se0;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Bx0;-><init>(Lcom/android/tools/r8/internal/qe0;)V

    return-object v0
.end method
