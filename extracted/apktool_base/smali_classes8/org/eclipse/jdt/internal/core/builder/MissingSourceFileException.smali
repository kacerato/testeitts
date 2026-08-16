.class public Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x13a8ce626eec44c7L


# instance fields
.field protected missingSourceFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;->missingSourceFile:Ljava/lang/String;

    return-void
.end method
