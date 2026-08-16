.class public final synthetic Lcom/android/tools/r8/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/R8Command$Builder;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/r3;->b:Lcom/android/tools/r8/R8Command$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/r3;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/r3;->b:Lcom/android/tools/r8/R8Command$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/r3;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/tools/r8/R8Command$Builder;->z(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;)V

    return-void
.end method
