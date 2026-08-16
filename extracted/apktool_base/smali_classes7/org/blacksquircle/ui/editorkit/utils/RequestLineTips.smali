.class public interface abstract Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    }
.end annotation


# virtual methods
.method public abstract getTypeForLine(IZ)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "isLatest"
        }
    .end annotation
.end method

.method public abstract showLineTips(IIIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "x",
            "y",
            "isLatest"
        }
    .end annotation
.end method
