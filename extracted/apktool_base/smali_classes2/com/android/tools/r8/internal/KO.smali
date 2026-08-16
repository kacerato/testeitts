.class public final Lcom/android/tools/r8/internal/KO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/UM;

.field public b:Lcom/android/tools/r8/internal/OO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/KO;->a:Lcom/android/tools/r8/internal/UM;

    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    iput-object v0, p0, Lcom/android/tools/r8/internal/KO;->b:Lcom/android/tools/r8/internal/OO;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/KO;
    .locals 6

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasClassReference()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/PM;

    if-eqz p2, :cond_1f

    new-instance v0, Lcom/android/tools/r8/internal/UM;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/KO;->a:Lcom/android/tools/r8/internal/UM;

    sget-boolean p2, Lcom/android/tools/r8/internal/KO;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/KO;->b:Lcom/android/tools/r8/internal/OO;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasMemberPattern()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->hasGeneralMember()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->getGeneralMember()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    sget-object v0, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    sget-object v1, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    sget-boolean v2, Lcom/android/tools/r8/internal/MO;->a:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;->hasAnnotatedBy()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;->hasAccess()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternGeneral;->getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/GO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GO;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/internal/HO;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/GO;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GO;->c()Lcom/android/tools/r8/internal/IO;

    move-result-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_b

    :cond_7
    new-instance p2, Lcom/android/tools/r8/internal/NO;

    invoke-direct {p2, v0, v1}, Lcom/android/tools/r8/internal/NO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/IO;)V

    goto/16 :goto_b

    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->hasFieldMember()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->getFieldMember()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    sget-object v0, Lcom/android/tools/r8/internal/uO;->h:Lcom/android/tools/r8/internal/uO;

    sget-object v1, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    sget-object v2, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    sget-boolean v3, Lcom/android/tools/r8/internal/wO;->e:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->hasName()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/vP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/internal/vP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/vO;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/vO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    :cond_a
    :goto_3
    if-nez v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    instance-of v4, v4, Lcom/android/tools/r8/internal/zP;

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->hasFieldType()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->getFieldType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/DP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/DP;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/zO;->a(Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/zO;

    move-result-object v2

    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/uO;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->hasAccess()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;

    move-result-object v0

    new-instance v3, Lcom/android/tools/r8/internal/tO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/tO;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasGeneralAccess()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/internal/HO;

    :cond_10
    sget-boolean v4, Lcom/android/tools/r8/internal/tO;->i:Z

    if-nez v4, :cond_12

    iget-object v5, v3, Lcom/android/tools/r8/internal/tO;->g:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v5, Lcom/android/tools/r8/internal/IX;

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasVolatilePattern()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getVolatilePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_7

    :cond_13
    sget-object v5, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_7
    iput-object v5, v3, Lcom/android/tools/r8/internal/tO;->g:Lcom/android/tools/r8/internal/LX;

    :cond_14
    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/android/tools/r8/internal/tO;->h:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/internal/IX;

    if-eqz v4, :cond_15

    goto :goto_8

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->hasTransientPattern()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessField;->getTransientPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_9

    :cond_17
    sget-object v0, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_9
    iput-object v0, v3, Lcom/android/tools/r8/internal/tO;->h:Lcom/android/tools/r8/internal/LX;

    :cond_18
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tO;->c()Lcom/android/tools/r8/internal/uO;

    move-result-object v0

    :cond_19
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->hasAnnotatedBy()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternField;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->hasName()Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object p2

    goto :goto_a

    :cond_1a
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object p2

    :cond_1b
    :goto_a
    new-instance p1, Lcom/android/tools/r8/internal/xO;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V

    move-object p2, p1

    goto :goto_b

    :cond_1c
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->hasMethodMember()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->getMethodMember()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/WO;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/internal/WO;

    move-result-object p2

    goto :goto_b

    :cond_1d
    sget-object p2, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    :goto_b
    iput-object p2, p0, Lcom/android/tools/r8/internal/KO;->b:Lcom/android/tools/r8/internal/OO;

    :cond_1e
    return-object p0

    :cond_1f
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid MemberItemPattern, reference to unbound binding: \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string p2, "Invalid MemberItemPattern, must have a valid class reference"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method
