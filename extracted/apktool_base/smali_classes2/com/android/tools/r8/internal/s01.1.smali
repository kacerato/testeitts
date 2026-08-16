.class public final synthetic Lcom/android/tools/r8/internal/s01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/s01;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s01;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;->setAnnotatedBy(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern$Builder;

    return-void
.end method
