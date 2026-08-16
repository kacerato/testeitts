.class final Lorg/openjdk/javax/tools/StandardLocation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/javax/tools/StandardLocation;->locationFor(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/javax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public isOutputLocation()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/javax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    const-string v1, "_OUTPUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
