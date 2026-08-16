.class public final synthetic Lcom/android/tools/r8/internal/dp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/om0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/om0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dp1;->a:Lcom/android/tools/r8/internal/om0;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dp1;->a:Lcom/android/tools/r8/internal/om0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/om0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method
