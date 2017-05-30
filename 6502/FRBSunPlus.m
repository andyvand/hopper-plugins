/*
 Copyright (c) 2014-2017, Alessandro Gatti - frob.it
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "FRBSunPlus.h"

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedClassInspection"

static const struct FRBOpcode kOpcodeTable[256];

@implementation ItFrobHopperSunplus6502SunPlus

+ (NSString *_Nonnull)family {
  return @"Sunplus";
}

+ (NSString *_Nonnull)model {
  return @"SunPlus";
}

+ (BOOL)exported {
  return YES;
}

+ (int)addressSpaceWidth {
  return 16;
}

- (const FRBOpcode *)opcodeForByte:(uint8_t)byte {
  return &kOpcodeTable[byte];
}

@end

static const struct FRBOpcode kOpcodeTable[256] = {
    {FRBOpcodeTypeBRK, FRBAddressModeStack, N, S | P},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeRTI, FRBAddressModeStack, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeORA, FRBAddressModeZeroPage, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeEOR, FRBAddressModeZeroPage, A, A},
    {FRBOpcodeTypeBPL, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeBVC, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeEOR, FRBAddressModeZeroPageIndexedX, A | X, A},
    {FRBOpcodeTypeJSR, FRBAddressModeAbsolute, N, N},
    {FRBOpcodeTypeBIT, FRBAddressModeZeroPage, A, N},
    {FRBOpcodeTypeRTS, FRBAddressModeStack, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeAND, FRBAddressModeZeroPage, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeADC, FRBAddressModeZeroPage, A, A},
    {FRBOpcodeTypeBMI, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeBVS, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSTA, FRBAddressModeZeroPage, A, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCMP, FRBAddressModeZeroPage, A, N},
    {FRBOpcodeTypeBCC, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeBNE, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSTA, FRBAddressModeZeroPageIndexedX, A | X, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCMP, FRBAddressModeZeroPageIndexedX, A | X, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCPX, FRBAddressModeImmediate, X, N},
    {FRBOpcodeTypeCPX, FRBAddressModeZeroPage, X, N},
    {FRBOpcodeTypeLDA, FRBAddressModeZeroPageIndexedIndirect, X, A},
    {FRBOpcodeTypeLDA, FRBAddressModeZeroPage, N, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSBC, FRBAddressModeZeroPage, A, A},
    {FRBOpcodeTypeBCS, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeBEQ, FRBAddressModeProgramCounterRelative, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeLDA, FRBAddressModeZeroPageIndexedX, X, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypePHP, FRBAddressModeStack, P | S, S},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypePHA, FRBAddressModeStack, A | S, S},
    {FRBOpcodeTypeJMP, FRBAddressModeAbsolute, N, N},
    {FRBOpcodeTypeORA, FRBAddressModeImmediate, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeEOR, FRBAddressModeImmediate, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCLC, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCLI, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypePLP, FRBAddressModeStack, S, P | S},
    {FRBOpcodeTypeBIT, FRBAddressModeAbsolute, A, N},
    {FRBOpcodeTypePLA, FRBAddressModeStack, S, A | S},
    {FRBOpcodeTypeJMP, FRBAddressModeAbsoluteIndirect, N, N},
    {FRBOpcodeTypeAND, FRBAddressModeImmediate, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeADC, FRBAddressModeImmediate, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSEC, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSEI, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCMP, FRBAddressModeImmediate, A, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeINX, FRBAddressModeImplied, X, X},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeLDA, FRBAddressModeImmediate, N, A},
    {FRBOpcodeTypeLDA, FRBAddressModeAbsolute, N, A},
    {FRBOpcodeTypeSBC, FRBAddressModeImmediate, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeCLV, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeLDA, FRBAddressModeAbsoluteIndexedX, X, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeASL, FRBAddressModeZeroPage, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeROL, FRBAddressModeZeroPage, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeROR, FRBAddressModeZeroPage, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeSTX, FRBAddressModeZeroPage, X, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeDEC, FRBAddressModeZeroPage, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeDEC, FRBAddressModeZeroPageIndexedX, X, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeLDX, FRBAddressModeImmediate, N, X},
    {FRBOpcodeTypeLDX, FRBAddressModeZeroPage, N, X},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeINC, FRBAddressModeZeroPage, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeASL, FRBAddressModeAccumulator, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeROL, FRBAddressModeAccumulator, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeROR, FRBAddressModeAccumulator, A, A},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeTXA, FRBAddressModeImplied, A | X, A | X},
    {FRBOpcodeTypeSTX, FRBAddressModeAbsolute, X, N},
    {FRBOpcodeTypeDEX, FRBAddressModeImplied, X, X},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeTXS, FRBAddressModeImplied, X | S, X | S},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeTAX, FRBAddressModeImplied, A | X, A | X},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeNOP, FRBAddressModeImplied, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeTSX, FRBAddressModeImplied, X | S, X | S},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N},
    {FRBOpcodeTypeUndocumented, FRBAddressModeUnknown, N, N}};

#pragma clang diagnostic pop
