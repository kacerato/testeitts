.class public abstract Lcom/android/tools/r8/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/AndroidResourceOutput;


# instance fields
.field public final a:Lcom/android/tools/r8/AndroidResourceInput;

.field public final b:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/b0;->a:Lcom/android/tools/r8/AndroidResourceInput;

    iput-object p2, p0, Lcom/android/tools/r8/b0;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/b0;->a:Lcom/android/tools/r8/AndroidResourceInput;

    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public final getPath()Lcom/android/tools/r8/ResourcePath;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/b0;->a:Lcom/android/tools/r8/AndroidResourceInput;

    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v0

    return-object v0
.end method
