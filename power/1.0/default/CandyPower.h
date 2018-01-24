/*
 * Copyright (C) 2018 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef VENDOR_CANDY_POWER_V1_0_POWER_H
#define VENDOR_CANDY_POWER_V1_0_POWER_H

#include <vendor/candy/power/1.0/ICandyPower.h>

namespace vendor {
namespace candy {
namespace power {
namespace V1_0 {
namespace implementation {

using ::vendor::candy::power::V1_0::ICandyPower;
using ::vendor::candy::power::V1_0::CandyFeature;
using ::android::hardware::Return;

struct CandyPower : public ICandyPower {
    CandyPower(power_module_t* module);
    ~CandyPower();
    Return<int32_t> getFeature(CandyFeature feature)  override;

  private:
    power_module_t* mModule;
};

extern "C" ICandyPower* HIDL_FETCH_ICandyPower(const char* name);

}  // namespace implementation
}  // namespace V1_0
}  // namespace power
}  // namespace candy
}  // namespace vendor

#endif  // VENDOR_CANDY_POWER_V1_0_POWER_H
