.class public final synthetic Lcom/android/tools/r8/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/R8Command$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/w3;->b:Lcom/android/tools/r8/R8Command$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/w3;->b:Lcom/android/tools/r8/R8Command$Builder;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/android/tools/r8/R8Command$Builder;->r(Lcom/android/tools/r8/R8Command$Builder;Ljava/nio/file/Path;)V

    return-void
.end method
