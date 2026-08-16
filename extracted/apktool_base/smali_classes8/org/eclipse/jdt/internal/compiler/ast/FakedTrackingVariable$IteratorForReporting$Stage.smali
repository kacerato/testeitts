.class final enum Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AtExit:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

.field public static final enum InnerOfNotEnclosing:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

.field public static final enum InnerOfProcessed:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

.field public static final enum OuterLess:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    const-string v1, "OuterLess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->OuterLess:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    const-string v2, "InnerOfProcessed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfProcessed:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    const-string v3, "InnerOfNotEnclosing"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfNotEnclosing:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    const-string v4, "AtExit"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->AtExit:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    filled-new-array {v0, v1, v2, v3}, [Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
