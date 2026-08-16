.class public interface abstract Lorg/google/googlejavaformat/Input$Tok;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tok"
.end annotation


# virtual methods
.method public abstract getColumn()I
.end method

.method public abstract getIndex()I
.end method

.method public abstract getOriginalText()Ljava/lang/String;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isComment()Z
.end method

.method public abstract isJavadocComment()Z
.end method

.method public abstract isNewline()Z
.end method

.method public abstract isSlashSlashComment()Z
.end method

.method public abstract isSlashStarComment()Z
.end method

.method public abstract length()I
.end method
