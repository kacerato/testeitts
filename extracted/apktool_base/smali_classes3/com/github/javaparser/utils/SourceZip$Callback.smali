.class public interface abstract Lcom/github/javaparser/utils/SourceZip$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/SourceZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract process(Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "relativeZipEntryPath",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;)V"
        }
    .end annotation
.end method
