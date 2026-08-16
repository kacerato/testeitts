.class public final synthetic Lcom/android/tools/r8/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/BaseCommand$Builder;

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/L0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/L0;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/L0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/L0;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/android/tools/r8/BaseCommand$Builder;->f(Lcom/android/tools/r8/BaseCommand$Builder;Ljava/util/Collection;)V

    return-void
.end method
