.class public final synthetic Lcom/android/tools/r8/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/BaseCommand$Builder;

.field public final synthetic c:[Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/N0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/N0;->c:[Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/N0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/N0;->c:[Ljava/nio/file/Path;

    invoke-static {v0, v1}, Lcom/android/tools/r8/BaseCommand$Builder;->l(Lcom/android/tools/r8/BaseCommand$Builder;[Ljava/nio/file/Path;)V

    return-void
.end method
