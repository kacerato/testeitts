.class public final synthetic Lcom/android/tools/r8/internal/Du1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Du1;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Du1;->b:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;->setGeneralAccess(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField$Builder;

    return-void
.end method
