.class public final synthetic Lcom/android/tools/r8/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/BaseCommand$Builder;

.field public final synthetic c:[B

.field public final synthetic d:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/W0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/W0;->c:[B

    iput-object p3, p0, Lcom/android/tools/r8/W0;->d:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/W0;->b:Lcom/android/tools/r8/BaseCommand$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/W0;->c:[B

    iget-object v2, p0, Lcom/android/tools/r8/W0;->d:Lcom/android/tools/r8/origin/Origin;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->i(Lcom/android/tools/r8/BaseCommand$Builder;[BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method
