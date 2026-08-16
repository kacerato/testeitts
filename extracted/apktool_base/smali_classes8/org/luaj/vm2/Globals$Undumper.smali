.class public interface abstract Lorg/luaj/vm2/Globals$Undumper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Undumper"
.end annotation


# virtual methods
.method public abstract undump(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
