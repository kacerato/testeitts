.class public abstract Lorg/luaj/vm2/lib/IoLib$File;
.super Lorg/luaj/vm2/LuaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/IoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "File"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/luaj/vm2/lib/IoLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/IoLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/IoLib$File;->this$0:Lorg/luaj/vm2/lib/IoLib;

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$File;->this$0:Lorg/luaj/vm2/lib/IoLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/IoLib;->filemethods:Lorg/luaj/vm2/LuaTable;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract isclosed()Z
.end method

.method public abstract isstdfile()Z
.end method

.method public abstract peek()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remaining()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setvbuf(Ljava/lang/String;I)V
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "userdata"

    return-object v0
.end method

.method public abstract write(Lorg/luaj/vm2/LuaString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
