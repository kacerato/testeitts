.class public final synthetic Lcom/android/tools/r8/internal/LC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/LC0;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LC0;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    check-cast p1, Lcom/android/tools/r8/internal/YM;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/DP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;Lcom/android/tools/r8/internal/YM;)V

    return-void
.end method
