.class public Lcom/ardor3d/util/resource/StringResourceSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/resource/ResourceSource;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _data:Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/resource/StringResourceSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/resource/StringResourceSource;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ardor3d/util/resource/StringResourceSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_data:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/util/resource/StringResourceSource;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "string resource"

    return-object v0
.end method

.method public getRelativeSource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;
    .locals 4

    sget-object p1, Lcom/ardor3d/util/resource/StringResourceSource;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRelativeSource(String)"

    const-string v3, "StringResourceSource does not support this method."

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_data:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_data:Ljava/lang/String;

    const-string v0, "type"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_type:Ljava/lang/String;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_data:Ljava/lang/String;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/util/resource/StringResourceSource;->_type:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
