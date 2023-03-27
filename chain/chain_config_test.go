// Copyright 2017 The go-ethereum Authors
// This file is part of the go-ethereum library.
//
// The go-ethereum library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-ethereum library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-ethereum library. If not, see <http://www.gnu.org/licenses/>.

package chain

import (
	"math/big"
	"testing"

	"github.com/ledgerwatch/erigon-lib/common/math"
)

func newUint64(val uint64) *uint64 { return &val }

func TestConfigRulesBedrock(t *testing.T) {
	c := &Config{
		BedrockBlock: big.NewInt(50),
	}
	var block uint64
	if c.IsBedrock(block) {
		t.Errorf("expected %v to not be bedrock", block)
	}
	block = 500
	if !c.IsBedrock(block) {
		t.Errorf("expected %v to be bedrock", block)
	}
}

func TestConfigRulesRegolith(t *testing.T) {
	c := &Config{
		RegolithTime: newUint64(500),
		Optimism:     &OptimismConfig{},
	}
	var stamp uint64
	if r := c.Rules(*newUint64(0), stamp); r.IsOptimismRegolith {
		t.Errorf("expected %v to not be regolith", stamp)
	}
	stamp = 500
	if r := c.Rules(*newUint64(0), stamp); !r.IsOptimismRegolith {
		t.Errorf("expected %v to be regolith", stamp)
	}
	stamp = math.MaxInt64
	if r := c.Rules(*newUint64(0), stamp); !r.IsOptimismRegolith {
		t.Errorf("expected %v to be regolith", stamp)
	}
}
