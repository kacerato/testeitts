.class public Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7b292230d7c1ee46L


# instance fields
.field protected qualifiedTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;->qualifiedTypeName:Ljava/lang/String;

    return-void
.end method
