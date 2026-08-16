.class public final synthetic Lcom/android/tools/r8/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/BaseCommand$Builder;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/BaseCommand$Builder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/J0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iput-boolean p2, p0, Lcom/android/tools/r8/J0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/J0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iget-boolean v1, p0, Lcom/android/tools/r8/J0;->c:Z

    invoke-static {v0, v1}, Lcom/android/tools/r8/BaseCommand$Builder;->g(Lcom/android/tools/r8/BaseCommand$Builder;Z)V

    return-void
.end method
