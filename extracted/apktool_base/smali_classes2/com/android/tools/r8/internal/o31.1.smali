.class public final synthetic Lcom/android/tools/r8/internal/o31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/o31;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/o31;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;->setClassName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    return-void
.end method
