.class public final Lcom/android/tools/r8/dex/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/SourceFileEnvironment;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/I0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/I0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/g;->a:Lcom/android/tools/r8/naming/I0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMapHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/g;->a:Lcom/android/tools/r8/naming/I0;

    iget-object v0, v0, Lcom/android/tools/r8/naming/I0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMapId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/g;->a:Lcom/android/tools/r8/naming/I0;

    iget-object v0, v0, Lcom/android/tools/r8/naming/I0;->a:Ljava/lang/String;

    return-object v0
.end method
