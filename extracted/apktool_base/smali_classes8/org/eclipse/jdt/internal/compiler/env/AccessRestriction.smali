.class public Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMMAND_LINE:B = 0x0t

.field public static final LIBRARY:B = 0x2t

.field public static final PROJECT:B = 0x1t


# instance fields
.field private accessRule:Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

.field public classpathEntryName:Ljava/lang/String;

.field public classpathEntryType:B


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->accessRule:Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->classpathEntryName:Ljava/lang/String;

    iput-byte p2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->classpathEntryType:B

    return-void
.end method


# virtual methods
.method public getProblemId()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->accessRule:Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->getProblemId()I

    move-result v0

    return v0
.end method

.method public ignoreIfBetter()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->accessRule:Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->ignoreIfBetter()Z

    move-result v0

    return v0
.end method
