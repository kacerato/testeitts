.class public final synthetic Lcom/android/tools/r8/relocator/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

.field public final synthetic c:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/relocator/h;->b:Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/relocator/h;->c:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocator/h;->b:Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/relocator/h;->c:Ljava/nio/file/Path;

    invoke-static {v0, v1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->c(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/nio/file/Path;)V

    return-void
.end method
